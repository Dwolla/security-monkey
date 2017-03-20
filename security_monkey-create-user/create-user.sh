#!/bin/bash

mkdir -p /var/log/security_monkey/
touch "/var/log/security_monkey/security_monkey-deploy.log"

export SECURITY_MONKEY_SETTINGS=/usr/local/src/security_monkey/env-config/config-deploy.py
cd /usr/local/src/security_monkey

echo "$(date +%x_%H:%M:%S:%N) - The create user service for security monkey is now starting..."
python manage.py create_user $USER_EMAIL 'Admin'
