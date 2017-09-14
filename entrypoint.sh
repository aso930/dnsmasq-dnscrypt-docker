#!/bin/bash
/etc/init.d/dnsmasq start
/usr/sbin/dnscrypt-proxy --local-address=127.0.2.1:5353 --resolver-name=${RESOLVER:-cisco}
