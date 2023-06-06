#!/bin/sh -e

# Запускать WireGuard как обычно
/init &

# Запускать процесс слежения за изменениями в конфигурационном файле.
while inotifywait -e modify /etc/wireguard/wg0.conf; do
    echo "Конфигурационный файл WireGuard был изменен, перезапуск WireGuard."
    wg-quick down wg0
    wg-quick up wg0
done
