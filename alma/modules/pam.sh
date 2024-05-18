#!/bin/bash

cp /etc/pam.d/system-auth /root/backups/system-auth.bak

echo "PASS_MIN_DAYS 10" >> /etc/login.defs
echo "PASS_MAX_DAYS 30" >> /etc/login.defs
echo "PASS_WARN_DAYS 7" >> /etc/login.defs
echo "ENCRYPT_METHOD SHA512" >> /etc/login.defs

dnf install libpwquality -y

cp ./assets/system-auth /etc/pam.d/system-auth
chown root:root /etc/pam.d/system-auth
chmod 644 /etc/pam.d/system-auth