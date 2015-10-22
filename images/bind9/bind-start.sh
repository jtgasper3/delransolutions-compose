#!/bin/sh

cd /etc/bind/master
dnssec-signzone -A -3 $(head -c 1000 /dev/random | sha1sum | cut -b 1-16) -N unixtime -o delransolutions.com -t delransolutions.com /etc/bind/keys/Kdelransolutions.com.+007+30738.private /etc/bind/keys/Kdelransolutions.com.+007+50363.private

exec named -c /etc/bind/named.conf -g -u named