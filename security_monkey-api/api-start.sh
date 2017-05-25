#!/bin/bash

export SECURITY_MONKEY_SETTINGS=/usr/local/src/security_monkey/env-config/config.py
cd /usr/local/src/security_monkey

echo "$(date +%x_%H:%M:%S:%N) - The api for security monkey is now starting on port 5000..."
monkey run_api_server -b 0.0.0.0:5000
