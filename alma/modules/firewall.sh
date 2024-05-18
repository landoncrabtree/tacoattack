#!/bin/bash

yum install firewalld -y
systemctl enable firewalld
systemctl start firewalld

zones=$(firewall-cmd --get-zones)

# allow ALL incoming traffic and ALL outgoing traffic on all zones
for zone in $zones; do
    firewall-cmd --permanent --zone=$zone --set-target=ACCEPT
done