#!/bin/sh
set -e
apk add --no-cache openssl >/dev/null
rm -f /etc/nginx/conf.d/default.conf || true

CERT=/etc/letsencrypt/live/$DOMAIN/fullchain.pem

if [ -f "$CERT" ]; then
  /render-https.sh
else
  /render-http.sh
fi

exec nginx -g 'daemon off;'
