# Heimdall Docker (Sin IPv6 y Configuración Actualizada)

Este proyecto es una configuración lista para correr Heimdall usando Docker, adaptada para:

- ✅ El nuevo layout de imágenes `linuxserver/heimdall`
- ✅ Evitar errores por IPv6 deshabilitado en el host (Raspberry Pi, VPS, etc.)
- ✅ Mantener configuración persistente y simple

---

## 🚀 Cómo usar

```bash
git clone https://github.com/orson32/heimdall-docker.git
cd heimdall-docker
docker compose up -d
Luego abre en tu navegador:

http://localhost:500
(Sustituye localhost por la IP de tu Raspberry Pi si estás en red local)

🛠 Fix rápido si el frontend no aparece

Si al abrir el sitio ves una página genérica que dice “Welcome to our server”, ejecuta:

./init.sh
Este script copia manualmente el frontend real de Heimdall a la carpeta correcta (/config/www) y reinicia el contenedor.

📦 Estructura del proyecto

heimdall-docker/
├── docker-compose.yml
├── nginx/
│   └── default.conf         # Config nginx parcheado sin IPv6
├── init.sh                  # Script opcional para restaurar frontend
└── config/                  # Generado automáticamente
🧠 Notas

Este setup asume que ya tienes Docker y Docker Compose instalados.
Compatible con Raspberry Pi, VPS o cualquier Linux con IPv6 desactivado.
Basado en .sample oficial de Heimdall, actualizado para 2025.
✨ Créditos

Este repo fue creado tras una épica batalla contra NGINX, IPv6, rutas rotas y confs viejos.
Gracias a Orson32 por documentarlo como verdadero guerrero de la terminal 🧠⚔️

