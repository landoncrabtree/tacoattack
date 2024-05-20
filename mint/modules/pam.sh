#!/bin/bash

cp /etc/pam.d/common-password /root/backups/common-password.bak

echo "PASS_MIN_DAYS 10" >> /etc/login.defs
echo "PASS_MAX_DAYS 30" >> /etc/login.defs
echo "PASS_WARN_AGE 7" >> /etc/login.defs
echo "ENCRYPT_METHOD SHA512" >> /etc/login.defs

apt install libpam-pwquality -y

cp ./assets/common-password /etc/pam.d/common-password
chown root:root /etc/pam.d/common-password
chmod 644 /etc/pam.d/common-password
