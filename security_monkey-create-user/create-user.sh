#!/bin/bash

mkdir -p /var/log/security_monkey/
touch "/var/log/security_monkey/security_monkey-deploy.log"

export SECURITY_MONKEY_SETTINGS=/usr/local/src/security_monkey/env-config/config-deploy.py

cd /usr/local/src/security_monkey
python create_user.py $USER_EMAIL 'Admin'
