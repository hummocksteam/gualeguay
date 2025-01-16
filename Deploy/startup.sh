#!/bin/bash

echo "v.0.0.1"
sleep 5
service nginx start
# Mantiene el proceso principal activo para evitar que Heroku marque el dyno como "crashed"
echo "nginx is running. Keeping the process alive..."
tail -f /var/log/nginx/access.log /var/log/nginx/error.log