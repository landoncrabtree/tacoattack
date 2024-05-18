#!/bin/bash

# Update the system
dnf update -y
dnf upgrade -y

# Install dependencies
dnf install epel-release wget -y

# Enable automatic updates
dnf install -y dnf-automatic
sed -i 's/apply_updates = no/apply_updates = yes/g' /etc/dnf/automatic.conf
systemctl enable --now dnf-automatic.timer
systemctl enable --now dnf-automatic-install.timer
systemctl enable --now dnf-automatic-download.timer
