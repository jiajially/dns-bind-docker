#!/bin/bash
cd /home/DNSWorkDir

rm -f /etc/named.conf
rm -f /etc/named.rfc1912.zones
rm -f /var/named/named.root


cp named.conf.template /etc/named.conf
ln -s /home/DNSWorkDir/named.rfc1912.zones /etc/named.rfc1912.zones
ln -s /home/DNSWorkDir/named.root /var/named/named.root


chown root:named /etc/named.rfc1912.zones
chown root:named /etc/named.conf
chown root:named /var/named/named.root

rndc-confgen -a -u named -s 0.0.0.0 
cp /etc/rndc.key rndc.key
cat rndc.key >> /etc/named.conf

named -u named -g -g 
