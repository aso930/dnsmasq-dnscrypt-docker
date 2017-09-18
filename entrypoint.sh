#!/bin/sh
/usr/sbin/dnsmasq -C /etc/dnsmasq.conf
/usr/sbin/dnscrypt-proxy --local-address=127.0.2.1:5353 --resolver-name=${RESOLVER:-cisco}
