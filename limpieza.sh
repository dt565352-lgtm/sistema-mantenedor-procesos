#!/bin/bash
# PROYECTO: MANTENEDOR DE SISTEMA
# CONTACTO: pcaicedoec@gmail.com | materiasug@gmail.com

echo "--- INICIANDO PROCESO DE MANTENIMIENTO ---"

# 1. Limpieza de paquetes del sistema
echo "Limpiando caché de paquetes del sistema (YUM)..."
sudo yum clean all -y

# 2. Verificación y borrado de node_modules
echo "Buscando carpeta node_modules..."
if [ -d "node_modules" ]; then
    rm -rf node_modules
    echo "[OK] Carpeta node_modules eliminada con éxito."
else
    echo "[INFO] No se encontró la carpeta node_modules, saltando paso."
fi

# 3. Mostrar espacio liberado o estado actual
echo "Estado actual del disco:"
df -h | grep '^/dev/'

echo "--- Proceso completado el: $(date) ---""
echo "Mantenimiento realizado el: $(date)" >> registro_mantenimiento.txt