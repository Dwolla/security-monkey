#!/bin/bash

export SECURITY_MONKEY_SETTINGS=/usr/local/src/security_monkey/env-config/config-deploy.py
cd /usr/local/src/security_monkey

echo "The api for security monkey is now starting on port 5000..."
python manage.py run_api_server -b 0.0.0.0:5000
