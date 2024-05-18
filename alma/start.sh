#!/bin/bash

NEW_PASSWORD="CHANGE_PASSWORDS"

./modules/backup.sh
./modules/update.sh
./modules/sysctl.sh
./modules/change_passwords.sh $NEW_PASSWORD
./modules/sudoers.sh
./modules/permissions.sh
./modules/prohibited.sh
./modules/suid.sh
./modules/firewall.sh