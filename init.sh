#!/bin/bash

echo "📦 Copiando frontend de Heimdall..."
docker exec -it heimdall bash -c 'cp -r /var/www/localhost/heimdall/public/* /config/www/'
echo "✅ Listo. Reiniciando contenedor..."
docker restart heimdall

