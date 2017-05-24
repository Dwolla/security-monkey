#!/bin/bash

mkdir -p /var/log/security_monkey/
touch "/var/log/security_monkey/security_monkey-deploy.log"

export SECURITY_MONKEY_SETTINGS=/usr/local/src/security_monkey/env-config/config.py
cd /usr/local/src/security_monkey

echo "$(date +%x_%H:%M:%S:%N) - The database upgrade service for security monkey is now starting..."
monkey db upgrade
