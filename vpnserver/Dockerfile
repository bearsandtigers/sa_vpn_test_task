FROM alpine:latest

RUN apk update && apk add openvpn

RUN mkdir -p /dev/net && mknod /dev/net/tun c 10 200
RUN echo "net.ipv4.ip_forward = 1" >> /etc/sysctl.conf && sysctl -p /etc/sysctl.conf

COPY files/* /etc/openvpn/
RUN mkdir /etc/openvpn/clients
COPY files/clients/* /etc/openvpn/clients
COPY files/server.sh /
RUN chmod +x /server.sh
CMD /server.sh & tail -f /dev/null


