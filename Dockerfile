FROM alpine

MAINTAINER wtf

ENV PORT 443
ENV PASSWORD password
ENV METHOD rc4-md5

RUN apk update && \
    apk add python3 && \
    pip3 install shadowsocks

CMD ssserver -p $PORT \
             -k $PASSWORD \
             -m $METHOD
