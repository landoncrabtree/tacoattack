#!/bin/bash

sudo sed -i 's/^PASS_MIN_DAYS.*/PASS_MIN_DAYS 7/' /etc/login.defs
sudo sed -i 's/^PASS_MIN_LEN.*/PASS_MIN_LEN 12/' /etc/login.defs
sudo sed -i 's/^LOGIN_RETRIES.*/LOGIN_RETRIES 3/' /etc/login.defs
sudo sed -i 's/^PASS_WARN_AGE.*/PASS_WARN_AGE 7/' /etc/login.defs
sudo sed -i 's/^ENCRYPT_METHOD.*/ENCRYPT_METHOD SHA512/' /etc/login.defs
sudo sed -i 's/^MAXLOGINS.*/MAXLOGINS 5/' /etc/login.defs
sudo sed -i 's/^MAX_SESSIONS.*/MAX_SESSIONS 10/' /etc/login.defs
sudo sed -i 's/^PASS_MAX_DAYS.*/PASS_MAX_DAYS 90/' /etc/login.defs
