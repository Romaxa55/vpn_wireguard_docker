FROM lscr.io/linuxserver/wireguard:latest

RUN apk add --no-cache inotify-tools

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
