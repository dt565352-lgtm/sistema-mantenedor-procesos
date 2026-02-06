#!/bin/bash
# PROYECTO: MANTENEDOR DE SISTEMA
# CONTACTO: pcaicedoec@gmail.com | materiasug@gmail.com

echo "--- INICIANDO PROCESO DE MANTENIMIENTO ---"

echo "Limpiando caché de paquetes del sistema (YUM)..."
sudo yum clean all -y

echo "Buscando y eliminando carpetas node_modules..."
rm -rf node_modules

echo "Proceso completado."