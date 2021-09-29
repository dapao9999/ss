From ubuntu

Run apt update && apt install shadowsocks-libev -y

CMD ss-server -p ${PORT:-443} -k ${PASSWORD:-password} -m ${METHOD:-aes-128-gcm}
