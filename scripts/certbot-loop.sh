#!/bin/sh
set -e
while :; do
  certbot certonly \
    --webroot -w /var/www/certbot \
    --email "$LE_EMAIL" --agree-tos --no-eff-email \
    -d "$DOMAIN" --non-interactive \
    --deploy-hook "/render-https.sh"
  sleep 12h
done
