FROM alpine

MAINTAINER wtf

RUN apk update && \
    apk add python3 && \
    pip3 install shadowsocks

ENTRYPOINT ["/usr/bin/ssserver"]
