#!/bin/bash

# Nombre del contenedor
CONTAINER_NAME="mongo_db"

# Fecha y hora actual
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Nombre final del archivo
OUTPUT_FILE="backup_${TIMESTAMP}.gz"

echo "Creando backup de MongoDB desde el contenedor '$CONTAINER_NAME'..."
docker exec "$CONTAINER_NAME" mongodump --archive --gzip > "$OUTPUT_FILE"

echo "Backup generado: $OUTPUT_FILE"
