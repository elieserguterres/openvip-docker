#!/usr/bin/env sh

WORKER_CONNECTIONS=`ulimit -n`
if [ ! -z "$NGINX_WORKER_CONNECTIONS" ]; then
    WORKER_CONNECTIONS="$NGINX_WORKER_CONNECTIONS"
fi
export WORKER_CONNECTIONS

envsubst < /etc/nginx/nginx.template.conf > /etc/nginx/nginx.conf && nginx
