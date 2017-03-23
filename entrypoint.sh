#!/bin/sh

TARGET=$1

if [ -z "${TARGET}" ]; then
    echo "No proxy target given!"
    exit 1
fi;

target_host="${TARGET}" envsubst '${target_host}' < /etc/nginx/nginx.conf > /etc/nginx/nginx.conf

exec nginx -g 'daemon off;'