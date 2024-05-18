#!/bin/bash

# Update the system
apt update -y
apt upgrade -y

# Install dependencies
apt install -y wget software-properties-common

# Enable automatic updates
apt install -y unattended-upgrades apt-listchanges
dpkg-reconfigure --priority=low unattended-upgrades
systemctl enable --now apt-daily.timer
systemctl enable --now apt-daily-upgrade.timer

# Enable security updates
sed -i 's/#deb http:\/\/security.ubuntu.com\//deb http:\/\/security.ubuntu.com\//g' /etc/apt/sources.list
sed -i 's/#deb http:\/\/security.ubuntu.com\//deb http:\/\/security.ubuntu.com\//g' /etc/apt/sources.list.d/*.list