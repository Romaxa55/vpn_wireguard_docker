#!/bin/sh -e

# Запускать процесс слежения в фоне
(
    while inotifywait -e modify -t 5 /config/wg0.conf; do
        echo "Конфигурационный файл WireGuard был изменен, перезапуск WireGuard."
        wg-quick down wg0
        wg-quick up wg0
    done
) &

# Запускать wg-api в фоне и перезапускать, если он завершается с ошибкой
(
    while true; do
        # Ждать создания интерфейса wg0
        sleep 5
        while ! ip link show wg0 > /dev/null 2>&1; do
            echo "Ждем создания интерфейса wg0..."
            sleep 5
        done

        # Запускать wg-api после создания интерфейса wg0
        echo "Запускаем wg-api..."
        wg-api --device=wg0 --listen=0.0.0.0:1234 || echo "wg-api завершился с ошибкой, перезапускаем..."
        sleep 5
    done
) &

# Запускать WireGuard как обычно
exec /init
