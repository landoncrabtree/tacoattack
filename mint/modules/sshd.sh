#!/bin/bash

cp /etc/ssh/sshd_config /root/backups/sshd_config.bak

cp ./assets/sshd_config /etc/ssh/sshd_config
sudo chown root:root /etc/ssh/sshd_config
sudo chmod 644 /etc/ssh/sshd_config

systemctl restart sshd || systemctl restart ssh