#!/bin/sh
envsubst '$DOMAIN $BACKEND_IP' \
  < /etc/nginx/templates/site.https.tmpl \
  > /etc/nginx/conf.d/site.conf

