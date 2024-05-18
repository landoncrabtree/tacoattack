#!/bin/bash

cp /etc/passwd /root/backups/passwd.bak

new_password=$1

for u in $(cat /etc/passwd | grep -E "/bin/.*sh" | cut -d: -f1); do
  if [[ "$u" == "cyan" || "$u" == "abcc" ]]; then
    continue
  fi

  echo "$u:$new_password" | chpasswd
  echo "$u:$new_password" >> user_passwords.txt
done