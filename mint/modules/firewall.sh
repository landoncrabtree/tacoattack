#!/bin/bash

apt install ufw -y

ufw enable

# we just allow all IN and OUT :shrug:
ufw allow in from any to any
ufw allow out from any to any
ufw default allow outgoing
ufw default allow incoming

