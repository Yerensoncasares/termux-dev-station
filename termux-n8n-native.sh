#!/data/data/com.termux/files/usr/bin/bash

# ========================================================
# Script Name: termux-nodered-native.sh
# Description: Lightweight automated installer for Node-RED on Termux
# Author: Yerenson Caseres (Systemic Flow)
# ========================================================

# Define ANSI Colors & Styles
GREEN='\033[1;32m'
RED='\033[1;31m'
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
BLUE='\033[1;34m'
NC='\033[0m' # No Color

clear
echo -e "${CYAN}╔════════════════════════════════════════════════════════╗${NC}"
echo -e "${CYAN}║       Node-RED Native Installer for Termux (ARM64)     ║${NC}"
echo -e "${CYAN}╚════════════════════════════════════════════════════════╝${NC}"
echo -e "${BLUE}[INFO]${NC} Preparing local environment setup...\n"

# 1. Install Base Packages (Node.js LTS, Coreutils & Termux-API)
echo -e "${YELLOW}[1/2] Installing essential packages (Node.js LTS, Termux-API)...${NC}"
yes | pkg update -y > /dev/null 2>&1
yes | pkg upgrade -y > /dev/null 2>&1
yes | pkg install nodejs-lts coreutils nano termux-api -y

if [ $? -ne 0 ]; then
	echo -e "${RED}[ERROR] Failed to install core Termux packages. Check your network connection.${NC}"
	exit 1
fi
echo -e "${GREEN}[OK] Core packages installed successfully.${NC}\n"

# 2. Global Node-RED Installation via npm
echo -e "${YELLOW}[2/2] Installing Node-RED globally via npm...${NC}"
echo -e "${BLUE}[INFO] This process is fast and lightweight...${NC}"
npm install -g --unsafe-perm node-red

if [ $? -ne 0 ]; then
	echo -e "\n${RED}[ERROR] Node-RED installation failed. Please review the output above.${NC}"
	exit 1
fi
echo -e "${GREEN}[OK] Node-RED installed successfully.${NC}\n"

# Installation Complete Summary
echo -e "${CYAN}╔════════════════════════════════════════════════════════╗${NC}"
echo -e "${GREEN}║         Node-RED Installation Successful!              ║${NC}"
echo -e "${CYAN}╚════════════════════════════════════════════════════════╝${NC}"
echo -e "To start your local instance, run the command:"
echo -e "   ${CYAN}node-red${NC}\n"
echo -e "Access your flow editor dashboard locally at:"
echo -e "   ${GREEN}http://127.0.0.1:1880${NC}"
echo -e "${CYAN}────────────────────────────────────────────────────────${NC}"
