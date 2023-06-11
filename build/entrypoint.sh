#!/bin/sh -e

# Запускать процесс слежения в фоне
(
    while inotifywait -e modify /config/wg0.conf; do
        echo "Конфигурационный файл WireGuard был изменен, перезапуск WireGuard."
        wg-quick down wg0
        wg-quick up wg0
    done
) &

wg-api --device=wg0 --listen=0.0.0.0:1234
# Запускать WireGuard как обычно
exec /init
