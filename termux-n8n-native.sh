#!/bin/bash

# ========================================================
# Script Name: termux-n8n-native.sh
# Description: Automated native installer for n8n (v2 locked) on Termux
# Author: Yerenson Casares
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
echo -e "${CYAN}║         n8n Native Installer for Termux (ARM64)        ║${NC}"
echo -e "${CYAN}╚════════════════════════════════════════════════════════╝${NC}"
echo -e "${BLUE}[INFO]${NC} Preparing local environment setup...\n"

# 1. Install Base Packages (Node.js LTS, Python, and Build Tools)
echo -e "${YELLOW}[1/4] Installing essential packages (Node.js LTS, Python, SQLite, Clang)...${NC}"
yes | pkg update -y > /dev/null 2>&1
yes | pkg upgrade -y > /dev/null 2>&1
yes | pkg install nodejs-lts python sqlite build-essential binutils make clang -y

if [ $? -ne 0 ]; then
	echo -e "${RED}[ERROR] Failed to install core Termux packages. Check your network connection.${NC}"
	exit 1
fi
echo -e "${GREEN}[OK] Core packages installed successfully.${NC}\n"

# 2. Python Configuration for node-gyp
echo -e "${YELLOW}[2/4] Configuring Python build dependency (setuptools for node-gyp)...${NC}"
pip install setuptools > /dev/null 2>&1

if [ $? -ne 0 ]; then
	echo -e "${YELLOW}[WARNING] setuptools installation encountered an issue, but proceeding...${NC}"
else
	echo -e "${GREEN}[OK] Python configuration ready.${NC}\n"
fi

# 3. Workaround for the NDK (Native Development Kit) Error on Android
echo -e "${YELLOW}[3/4] Bypassing Android NDK path restrictions for native compilation...${NC}"
export GYP_DEFINES="android_ndk_path=''"
echo -e "   -> GYP_DEFINES set to: ${CYAN}$GYP_DEFINES${NC}"
echo -e "${GREEN}[OK] Environment variables configured.${NC}\n"

# 4. Global n8n v2 Installation (Locked to prevent Docker-enforced v3 updates)
echo -e "${YELLOW}[4/4] Installing n8n (v2 stable branch) globally via npm...${NC}"
echo -e "${BLUE}[INFO] This process may take a few minutes depending on your hardware...${NC}"
npm install -g n8n@2

if [ $? -eq 0 ]; then
	echo -e "\n${CYAN}╔════════════════════════════════════════════════════════╗${NC}"
	echo -e "${GREEN}║           n8n v2 Installation Successful!              ║${NC}"
	echo -e "${CYAN}╚════════════════════════════════════════════════════════╝${NC}"
	echo -e "To start your local instance, run the command:"
	echo -e "   ${CYAN}n8n${NC}\n"
	echo -e "Access your workflow dashboard locally at:"
	echo -e "   ${GREEN}http://127.0.0.1:5678${NC}"
	echo -e "${CYAN}────────────────────────────────────────────────────────${NC}"
else
	echo -e "\n${RED}[ERROR] n8n installation failed. Please review the output above.${NC}"
	exit 1
fi
