#!/bin/bash

# Find SUID/SGID files
find / -type f -perm -4000 -o -type f -perm -2000 2>/dev/null > suid_files.txt

# Find SUID/SGID files owned by root
find / -type f -user root -perm -4000 -o -type f -user root -perm -2000 2>/dev/null > root_suid_files.txt