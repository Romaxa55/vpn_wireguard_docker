FROM lscr.io/linuxserver/wireguard:latest

RUN apk add --no-cache inotify-tools go git && \
    export GOBIN=/usr/local/bin && \
    go install github.com/romaxa55/wg-api@master

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
