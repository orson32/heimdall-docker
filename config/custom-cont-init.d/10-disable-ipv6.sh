#!/bin/bash
echo "🔧 Parcheando default.conf para eliminar IPv6"
sed -i 's/listen \[::\]:80 default_server;/# listen [::]:80 default_server;/g' /config/nginx/site-confs/default
sed -i 's/listen \[::\]:443 ssl;/# listen [::]:443 ssl;/g' /config/nginx/site-confs/default
