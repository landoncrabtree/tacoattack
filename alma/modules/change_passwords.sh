#!/bin/bash

cp /etc/passwd /root/backups/passwd.bak

while true; do
  echo "Enter new password for all users: "
  echo "[+] 12+ characters"
  echo "[+] 1+ uppercase characters"
  echo "[+] 2+ numbers"
  echo "[+] 1+ special characters"
  echo "[+] Password will be saved to user_passwords.txt"
  read -s PASSWORD  # -s flag hides the entered password

  if [[ ${#PASSWORD} -ge 12 && "$PASSWORD" =~ [A-Z] && $(echo "$PASSWORD" | grep -o [0-9] | wc -l) -ge 2 && "$PASSWORD" =~ [!@#\$%^&*()_+] ]]; then
    break
  else
    echo "Password does not meet the criteria. Please try again."
  fi
done

for u in $(cat /etc/passwd | grep -E "/bin/.*sh" | cut -d: -f1); do
  echo "$u:$PASSWORD" | chpasswd
  echo "$u:$PASSWORD" >> user_passwords.txt
done