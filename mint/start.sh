#!/bin/bash

./modules/backup.sh
./modules/update.sh
./modules/sysctl.sh
./modules/change_passwords.sh
./modules/sudoers.sh
./modules/permissions.sh
./modules/prohibited.sh
./modules/suid.sh
./modules/firewall.sh