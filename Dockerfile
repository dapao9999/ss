FROM ubuntu

RUN apt update \
&& apt install shadowsocks-libev -y

CMD ss-server -p ${PORT:-443} \
             -k ${PASSWORD:-password} \
             -m ${METHOD:-rc4-md5}
