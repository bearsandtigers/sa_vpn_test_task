#!/bin/sh
ip route add 172.16.2.1/32 via 172.16.8.3
openvpn --cd /etc/openvpn --config /etc/openvpn/host2.conf

