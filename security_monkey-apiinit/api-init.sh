#!/bin/bash

mkdir -p /var/log/security_monkey/
touch "/var/log/security_monkey/security_monkey-deploy.log"

cd /usr/local/src/security_monkey
python manage.py db upgrade
