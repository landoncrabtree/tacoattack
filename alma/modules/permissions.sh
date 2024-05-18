#!/bin/bash

umask 022
chmod 000 /etc/shadow && chown root:root /etc/shadow
chmod 644 /etc/passwd && chown root:root /etc/passwd
chmod 644 /etc/group && chown root:root /etc/group
chmod 640 /etc/gshadow && chown root:shadow /etc/gshadow
chmod 600 /etc/passwd- && chown root:root /etc/passwd-
chmod 600 /etc/shadow- && chown root:root /etc/shadow-
chmod 600 /etc/group- && chown root:root /etc/group-
chmod 600 /etc/gshadow- && chown root:root /etc/gshadow-
chmod 644 /etc/hosts.allow && chown root:root /etc/hosts.allow
chmod 644 /etc/hosts.deny && chown root:root /etc/hosts.deny
chmod 644 /etc/hosts && chown root:root /etc/hosts
chmod 644 /etc/hostname && chown root:root /etc/hostname
chmod 644 /etc/resolv.conf && chown root:root /etc/resolv.conf
chmod 644 /etc/networks && chown root:root /etc/networks
chmod 644 /etc/protocols && chown root:root /etc/protocols
chmod 644 /etc/services && chown root:root /etc/services
chmod 644 /etc/issue && chown root:root /etc/issue
chmod 644 /etc/issue.net && chown root:root /etc/issue.net
chmod 644 /etc/motd && chown root:root /etc/motd
chmod 644 /etc/securetty && chown root:root /etc/securetty
chmod 644 /etc/crontab && chown root:root /etc/crontab
chmod 644 /etc/cron.deny && chown root:root /etc/cron.deny
chmod 644 /etc/at.deny && chown root:root /etc/at.deny
chmod 600 /etc/cron.allow && chown root:root /etc/cron.allow
chmod 600 /etc/at.allow && chown root:root /etc/at.allow
chmod 600 /etc/cron.d/* && chown root:root /etc/cron.d/*
chmod 600 /etc/cron.daily/* && chown root:root /etc/cron.daily/*
chmod 600 /etc/cron.hourly/* && chown root:root /etc/cron.hourly/*
chmod 600 /etc/cron.monthly/* && chown root:root /etc/cron.monthly/*
chmod 600 /etc/cron.weekly/* && chown root:root /etc/cron.weekly/*

chown root:root /etc/fstab