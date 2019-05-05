#!/bin/sh
brctl addbr br0
ip address add 172.16.2.1/24 dev br0

openvpn --cd /etc/openvpn --config /etc/openvpn/server.conf &

brctl addif br0 eth0
ip address add 172.16.4.10/24 dev br0
ip address del 172.16.4.10/24 dev eth0
sleep 2
ip link set tap0 up
brctl addif br0 tap0
ip link set br0 up

