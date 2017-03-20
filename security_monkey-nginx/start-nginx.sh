#!/usr/bin/env bash

openssl req -nodes \
  -x509 \
  -newkey rsa:4096 \
  -keyout /etc/nginx/ssl/server.key \
  -out /etc/nginx/ssl/server.crt \
  -subj "/C=US/ST=Iowa/L=Des Moines/O=Dwolla/CN=localhost/emailAddress=dev+securitymonkey@dwolla.com" \
  -days 365
sudo cp /etc/nginx/ssl/server.crt /etc/ssl/certs
sudo cp /etc/nginx/ssl/server.key /etc/ssl/private

SECURITY_MONKEY_SSL_CERT=${SECURITY_MONKEY_SSL_CERT:-/etc/nginx/ssl/server.crt}
SECURITY_MONKEY_SSL_KEY=${SECURITY_MONKEY_SSL_KEY:-/etc/nginx/ssl/server.key}

if [ ! -f "$SECURITY_MONKEY_SSL_CERT" ] || [ ! -f "$SECURITY_MONKEY_SSL_KEY" ]; then
    # Fail if SSL is unavailable
    echo "$(date) Error: Missing files required for SSL"
    # exit 1
    sed -i.bak 's@.*ssl@# &@' /etc/nginx/conf.d/securitymonkey.conf &&\
    echo "$(date) Warn: Disabled ssl in securitymonkey.conf"
fi

echo "$(date +%x_%H:%M:%S:%N) - The nginx service for security monkey is now starting..."
exec nginx
