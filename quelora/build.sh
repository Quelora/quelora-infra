#!/bin/bash

# ==========================================
# CONFIGURACIÓN
# ==========================================

# Archivo donde guardaremos el estado de las versiones
VERSION_FILE=".versions"
REPO_USER="mrger80"

# Colores (Mismo esquema del modelo aprendido)
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

# Inicializar archivo de versiones si no existe
if [ ! -f "$VERSION_FILE" ]; then
    touch "$VERSION_FILE"
fi

# ==========================================
# FUNCIONES
# ==========================================

# Obtiene la última versión guardada o devuelve 1.9 por defecto (para que la siguiente sea 2.0)
function get_last_version() {
    local SERVICE=$1
    local VER=$(grep "^${SERVICE}=" "$VERSION_FILE" | cut -d'=' -f2)
    
    if [ -z "$VER" ]; then
        echo "1.9"
    else
        echo "$VER"
    fi
}

# Guarda la nueva versión en el archivo
function save_new_version() {
    local SERVICE=$1
    local NEW_VER=$2
    
    # Si existe la línea, la reemplaza; si no, la agrega
    if grep -q "^${SERVICE}=" "$VERSION_FILE"; then
        # Opción compatible con Linux/Mac para sed
        sed -i.bak "s/^${SERVICE}=.*/${SERVICE}=${NEW_VER}/" "$VERSION_FILE" && rm "${VERSION_FILE}.bak"
    else
        echo "${SERVICE}=${NEW_VER}" >> "$VERSION_FILE"
    fi
}

# Incrementa versión (Lógica simple: decimal + 0.1)
function increment_version() {
    local LAST_VER=$1
    # Usamos awk para sumar decimales de forma fiable
    echo "$LAST_VER 0.1" | awk '{printf "%.1f", $1 + $2}'
}

function build_and_push() {
    local SERVICE_KEY=$1       # Clave interna (ej: api, worker)
    local IMAGE_NAME=$2        # Nombre imagen Docker (ej: quelora-api)
    local DOCKERFILE=$3        # Archivo Dockerfile (ej: Dockerfile.api)

    # 1. Calcular versiones
    local LAST_VER=$(get_last_version "$SERVICE_KEY")
    local NEW_VER=$(increment_version "$LAST_VER")
    local FULL_IMAGE="${REPO_USER}/${IMAGE_NAME}:${NEW_VER}"
    local LATEST_IMAGE="${REPO_USER}/${IMAGE_NAME}:latest"

    echo -e "${BLUE}➡️  Iniciando proceso para: ${YELLOW}$IMAGE_NAME${NC}"
    echo -e "${BLUE}📈  Versión anterior: $LAST_VER | Nueva versión: ${GREEN}$NEW_VER${NC}"
    
    # 2. Preguntar por 'latest'
    echo "----------------------------------------"
    read -p "¿Deseas subir también como 'latest'? (y/n): " PUSH_LATEST
    echo "----------------------------------------"

    # 3. Construir (Build)
    echo -e "${BLUE}🔨  Construyendo imagen...${NC}"
    
    # Nota: Como el script está DENTRO de ./quelora, el contexto es "."
    if docker build -t "$FULL_IMAGE" -f "$DOCKERFILE" .; then
        echo -e "${GREEN}✅  Build exitoso: $FULL_IMAGE${NC}"
    else
        echo -e "${RED}❌  Error en el build de $IMAGE_NAME${NC}"
        exit 1
    fi

    # 4. Etiquetar latest si corresponde
    if [[ "$PUSH_LATEST" == "y" || "$PUSH_LATEST" == "Y" ]]; then
        docker tag "$FULL_IMAGE" "$LATEST_IMAGE"
    fi

    # 5. Push al registro
    echo -e "${BLUE}🚀  Subiendo a Docker Hub...${NC}"
    
    if docker push "$FULL_IMAGE"; then
        echo -e "${GREEN}✅  Push versión $NEW_VER completado.${NC}"
        save_new_version "$SERVICE_KEY" "$NEW_VER"
    else
        echo -e "${RED}❌  Falló el push de la versión $NEW_VER${NC}"
        exit 1
    fi

    if [[ "$PUSH_LATEST" == "y" || "$PUSH_LATEST" == "Y" ]]; then
        echo -e "${BLUE}🚀  Subiendo tag 'latest'...${NC}"
        if docker push "$LATEST_IMAGE"; then
            echo -e "${GREEN}✅  Push latest completado.${NC}"
        else
            echo -e "${RED}⚠️  Falló el push de latest (pero la versión $NEW_VER está a salvo).${NC}"
        fi
    fi

    echo "----------------------------------------"
}

# ==========================================
# MENU
# ==========================================

clear
echo -e "${YELLOW}🐳  BUILDER DE QUELORA DOCKER${NC}"
echo "Gestionando versiones automáticamente desde 2.0+"
echo "----------------------------------------"
echo "Selecciona qué servicio construir y subir:"
echo "1. API (quelora-api)"
echo "2. Dashboard API (quelora-dashboard-api)"
echo "3. Worker (quelora-worker)"
echo "4. Jobs (quelora-jobs)"
echo "5. Todo (All)"
echo "----------------------------------------"
read -p "Opción (1-5): " option
echo ""

case $option in
    1)
        build_and_push "api" "quelora-api" "Dockerfile.api"
        ;;
    2)
        build_and_push "dashboard" "quelora-dashboard-api" "Dockerfile.api.dashboard"
        ;;
    3)
        build_and_push "worker" "quelora-worker" "Dockerfile.worker"
        ;;
    4)
        build_and_push "jobs" "quelora-jobs" "Dockerfile.jobs"
        ;;
    5)
        echo -e "${YELLOW}🚀  Procesando TODO el stack...${NC}"
        build_and_push "api" "quelora-api" "Dockerfile.api"
        build_and_push "dashboard" "quelora-dashboard-api" "Dockerfile.api.dashboard"
        build_and_push "worker" "quelora-worker" "Dockerfile.worker"
        build_and_push "jobs" "quelora-jobs" "Dockerfile.jobs"
        echo -e "${GREEN}✨  Proceso global finalizado.${NC}"
        ;;
    *)
        echo -e "${RED}❌  Opción no válida.${NC}"
        exit 1
        ;;
esac
