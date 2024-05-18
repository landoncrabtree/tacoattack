#!/bin/bash

NEW_PASSWORD="CHANGE_PASSWORDS"

./modules/audit.sh
./modules/backup.sh
./modules/update.sh
./modules/sysctl.sh
./modules/pam.sh
./modules/change_passwords.sh $NEW_PASSWORD
./modules/sshd.sh
./modules/sudoers.sh
./modules/permissions.sh
./modules/prohibited.sh
./modules/suid.sh
./modules/firewall.sh