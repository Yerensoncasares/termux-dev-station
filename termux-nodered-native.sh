#!/data/data/com.termux/files/usr/bin/bash

# ========================================================
# Script Name: termux-nodered-native.sh
# Description: Ultra-lightweight native installer for Node-RED on Termux
# Author: Yerenson Caseres (Systemic Flow)
# ========================================================

# ANSI Colors
GREEN='\033[1;32m'
RED='\033[1;31m'
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
BLUE='\033[1;34m'
NC='\033[0m'

clear
echo -e "${CYAN}╔════════════════════════════════════════════════════════╗${NC}"
echo -e "${CYAN}║       Node-RED Native Installer for Termux (ARM64)     ║${NC}"
echo -e "${CYAN}║                  Systemic Flow Edition                 ║${NC}"
echo -e "${CYAN}╚════════════════════════════════════════════════════════╝${NC}"
echo -e "${BLUE}[INFO]${NC} Verificando dependencias del sistema...\n"

# 1. Asegurar Node.js y Termux-API (sin reinstalar paquetes base ni causar conflicto LTS)
if ! command -v node >/dev/null 2>&1; then
    echo -e "${YELLOW}[1/2] Instalando Node.js y Termux-API...${NC}"
    pkg install nodejs termux-api -y
    if [ $? -ne 0 ]; then
        echo -e "${RED}[ERROR] Falló la instalación de Node.js. Revisa tu conexión.${NC}"
        exit 1
    fi
else
    echo -e "${GREEN}[OK] Node.js ya está instalado en el sistema ($(node -v)).${NC}"
    # Asegurar termux-api si faltara
    command -v termux-battery-status >/dev/null 2>&1 || pkg install termux-api -y >/dev/null 2>&1
fi

# 2. Instalación limpia de Node-RED (sin módulos nativos de compilación C++)
echo -e "\n${YELLOW}[2/2] Instalando Node-RED de forma global y ligera...${NC}"
npm install -g --omit=optional --no-audit --no-fund node-red

if [ $? -ne 0 ]; then
    echo -e "\n${RED}[ERROR] La instalación de Node-RED falló.${NC}"
    exit 1
fi

echo -e "${GREEN}[OK] Node-RED instalado exitosamente.${NC}\n"

# Resumen final
echo -e "${CYAN}╔════════════════════════════════════════════════════════╗${NC}"
echo -e "${GREEN}║         ¡Instalación de Node-RED Completada!           ║${NC}"
echo -e "${CYAN}╚════════════════════════════════════════════════════════╝${NC}"
echo -e "Para iniciar el servicio ejecuta:"
echo -e "   ${CYAN}node-red${NC}\n"
echo -e "Panel de control accesible en:"
echo -e "   ${GREEN}http://127.0.0.1:1880${NC}"
echo -e "${CYAN}────────────────────────────────────────────────────────${NC}"
