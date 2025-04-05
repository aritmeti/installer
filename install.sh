#!/bin/bash

echo "🚀 Iniciando instalación automática de IAtrader..."

# Actualizar sistema
apt update && apt upgrade -y

# Instalar dependencias
apt install -y curl git docker.io docker-compose

# Habilitar Docker
systemctl start docker
systemctl enable docker

# Crear carpeta de proyecto
mkdir -p /opt/iatrader
cd /opt/iatrader

echo "✅ Instalación base completada. Sistema preparado para desplegar IAtrader."
