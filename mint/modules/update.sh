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