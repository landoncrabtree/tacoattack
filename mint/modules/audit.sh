#!/bin/bash

# List running services
systemctl list-units --type=service --state=running --all > running_services.txt

# List enabled services
systemctl list-unit-files --type=service | grep enabled > enabled_services.txt

# List open ports
ss -tunlp > open_ports.txt || netstat -tunlp > open_ports.txt

# List processes
ps aux > processes.txt

# List cron jobs
users=$(cut -f1 -d: /etc/passwd)
for user in $users; do
  crontab -u $user -l &>> cron_jobs.txt
done

# List scheduled jobs
crons=(/etc/cron.d/ /etc/cron.daily/ /etc/cron.hourly/ /etc/cron.monthly/ /etc/cron.weekly/)
for cron in ${crons[@]}; do
  cat $cron* &>> scheduled_jobs.txt
done

# MOTD banner
cat /etc/motd > motd.txt