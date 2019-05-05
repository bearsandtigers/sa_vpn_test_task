FROM alpine:latest

RUN apk update && apk add openvpn netcat-openbsd

RUN mkdir -p /dev/net && mknod /dev/net/tun c 10 200
RUN echo "net.ipv4.ip_forward = 1" >> /etc/sysctl.conf

COPY files/* /etc/openvpn/
COPY files/*.sh /
RUN chmod +x /*.sh
RUN mkdir /etc/openvpn/clients
CMD tail -f /dev/null

