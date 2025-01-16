#!/bin/bash

echo "v.0.0.1"
sleep 5
export PORT=${PORT:-8080}
# Reemplazar ${PORT} en nginx.conf con el valor real del puerto
envsubst '${PORT}' < /etc/nginx/nginx.conf > /etc/nginx/nginx.conf.tmp
mv /etc/nginx/nginx.conf.tmp /etc/nginx/nginx.conf
service nginx start
tail -f /var/log/nginx/access.log /var/log/nginx/error.log