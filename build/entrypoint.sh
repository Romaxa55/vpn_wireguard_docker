#!/bin/sh

# Запустите оригинальный entrypoint в фоне
/init &

# Теперь запускаем цикл слежения за файлом
while inotifywait -e modify /etc/wireguard/wg.conf; do
    echo "wg.conf was modified, restarting WireGuard"
    wg-quick down wg0 && wg-quick up wg0
done
