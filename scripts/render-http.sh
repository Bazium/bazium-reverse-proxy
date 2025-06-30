#!/bin/sh
envsubst '$DOMAIN $BACKEND_IP' \
  < /etc/nginx/templates/site.http.tmpl \
  > /etc/nginx/conf.d/site.conf
