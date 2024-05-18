#!/bin/bash

cp /etc/sudoers /root/backups/sudoers.bak

# Delete 'Defaults !authenticate' from sudoers file
sed -i '/Defaults !authenticate/d' /etc/sudoers
sed -i '/Defaults !authenticate/d' /etc/sudoers.d/*

# Change NOPASSWD to PASSWD for sudoers
sed -i 's/NOPASSWD/PASSWD/g' /etc/sudoers
sed -i 's/NOPASSWD/PASSWD/g' /etc/sudoers.d/*