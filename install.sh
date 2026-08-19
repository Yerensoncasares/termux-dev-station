#!/data/data/com.termux/files/usr/bin/bash
# ==============================================================================
# 📱 TERMUX-DEV-STATION - Instalador Interactivo y Modular
# ==============================================================================
# Verificaciones de seguridad, control de errores, selección modular (DE, VNC/X11, IA, etc.)
# ==============================================================================

# Modo estricto de manejo de errores y variables no definidas
set -e
set -u

# Colores y estilos ANSI
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
CYAN='\033[1;36m'
NC='\033[0m' # No Color

print_banner() {
    clear
    if command -v figlet &>/dev/null; then
        echo -e "${CYAN}"
        figlet "Termux Dev Station"
        echo -e "${NC}"
    else
        echo -e "${CYAN}======================================================${NC}"
        echo -e "${CYAN}           TERMUX-DEV-STATION (INSTALADOR)           ${NC}"
        echo -e "${CYAN}======================================================${NC}"
    fi
    echo -e "${YELLOW}Tu estación de desarrollo definitiva en Android sin root.${NC}\n"
}

# ==============================================================================
# 1. VERIFICACIONES DE SEGURIDAD Y ENTORNO
# ==============================================================================
print_banner
echo -e "${BLUE}[*] Verificando entorno de ejecución...${NC}"

if [ ! -d "/data/data/com.termux" ] && [ -z "${TERMUX_VERSION:-}" ]; then
    echo -e "${RED}[ERROR CRÍTICO] Este script está diseñado exclusivamente para ejecutarse en Termux (Android).${NC}"
    echo -e "${RED}No se ha detectado el entorno Termux. Abortando instalación por seguridad.${NC}"
    exit 1
fi
echo -e "${GREEN}[✓] Entorno Termux verificado correctamente.${NC}"

# Verificar espacio en disco disponible
echo -e "${BLUE}[*] Verificando almacenamiento disponible...${NC}"
AVAILABLE_SPACE_KB=$(df /data/data/com.termux 2>/dev/null | tail -1 | awk '{print $4}')
if [ -n "$AVAILABLE_SPACE_KB" ]; then
    AVAILABLE_SPACE_MB=$((AVAILABLE_SPACE_KB / 1024))
    echo -e "${GREEN}[✓] Espacio libre detectado: ~${AVAILABLE_SPACE_MB} MB${NC}"
    if [ "$AVAILABLE_SPACE_MB" -lt 3000 ]; then
        echo -e "${YELLOW}[!] ADVERTENCIA: Tienes menos de 3 GB libres. Algunos entornos pesados (como KDE Plasma) requieren al menos 10 GB.${NC}"
        read -p "¿Deseas continuar de todas formas? (s/n): " cont_space
        if [[ "$cont_space" != "s" && "$cont_space" != "S" ]]; then
            echo "Instalación cancelada por el usuario."
            exit 0
        fi
    fi
else
    echo -e "${YELLOW}[!] No se pudo calcular el espacio libre exacto con df. Continuando con precaución...${NC}"
fi

# Trampa de errores
trap 'echo -e "\n${RED}[ERROR] Se ha producido un fallo durante la ejecución del comando. Instalación detenida por seguridad.${NC}\n"' ERR

# ==============================================================================
# 2. MENÚ INTERACTIVO MODULAR ("TERMUX-DEV-STATION")
# ==============================================================================
echo -e "\n${CYAN}======================================================${NC}"
echo -e "${CYAN}             CONFIGURACIÓN DE INSTALACIÓN            ${NC}"
echo -e "${CYAN}======================================================${NC}"

# Elección de Escritorio
echo -e "${YELLOW}¿Qué entorno de escritorio deseas instalar?${NC}"
echo "  1) KDE Plasma (Moderno, completo, requiere ~10 GB y 4GB RAM)"
echo "  2) XFCE (Ligero, rápido, optimizado para recursos ajustados) [Recomendado]"
echo "  3) Ninguno (Solo Modo CLI / Servidor / Sin Entorno Gráfico)"
read -p "Selecciona una opción [1-3] (por defecto 2): " choice_de
choice_de=${choice_de:-2}

# Elección de Servidor Gráfico (VNC, X11 o Ambos)
echo -e "\n${YELLOW}¿Qué servidor(es) gráfico(s) deseas utilizar?${NC}"
echo "  1) TigerVNC (Servidor VNC clásico, compatible con cualquier app VNC visor en 127.0.0.1:5901)"
echo "  2) Termux-X11 Nativo (Alto rendimiento, sin barras VNC, app dedicada) [Recomendado]"
echo "  3) Ambos (Instalar soporte para TigerVNC y Termux-X11 simultáneamente)"
read -p "Selecciona una opción [1-3] (por defecto 2): " choice_server
choice_server=${choice_server:-2}

# Elección de Componentes Opcionales
echo -e "\n${YELLOW}¿Deseas instalar la Suite de Inteligencia Artificial (Ollama + OpenCode)?${NC}"
read -p "Instalar IA Local [s/N]: " choice_ai
choice_ai=${choice_ai:-n}

echo -e "\n${YELLOW}¿Deseas instalar el motor de automatización n8n?${NC}"
read -p "Instalar n8n [s/N]: " choice_n8n
choice_n8n=${choice_n8n:-n}

echo -e "\n${YELLOW}¿Deseas instalar Godot Engine (Motor de Videojuegos)?${NC}"
read -p "Instalar Godot [s/N]: " choice_godot
choice_godot=${choice_godot:-n}

echo -e "\n${YELLOW}¿Deseas instalar Herramientas de Desarrollo y Multimedia (VS Code/code-oss, Python, Node.js, Firefox, Audio)?${NC}"
read -p "Instalar Herramientas Dev [S/n]: " choice_dev
choice_dev=${choice_dev:-s}

echo -e "\n${GREEN}[✓] Configuración capturada con éxito. Iniciando despliegue modular...${NC}\n"
sleep 2

# ==============================================================================
# 3. FASE DE INSTALACIÓN BASE Y REPOSITORIOS
# ==============================================================================
echo -e "${BLUE}[*] Fase 1: Actualizando sistema y configurando repositorios...${NC}"
termux-setup-storage || true
termux-change-repo || true
apt full-upgrade -y
pkg update && pkg upgrade -y

echo -e "${BLUE}[*] Instalando repositorios auxiliares y utilidades del sistema...${NC}"
pkg install tur-repo x11-repo -y
pkg install git unzip wget curl ripgrep procps figlet neofetch -y

echo -e "${BLUE}[*] Configurando aceleración gráfica por hardware (VirGL + ANGLE)...${NC}"
pkg install virglrenderer-android angle-android mesa-demos -y

# ==============================================================================
# 4. INSTALACIÓN DE SERVIDORES GRÁFICOS Y ESCRITORIO
# ==============================================================================
DE_PACKAGE=""
if [ "$choice_de" == "1" ]; then
    DE_PACKAGE="plasma konsole dolphin htop"
    DE_START="startplasma-x11"
    echo -e "${GREEN}[+] Seleccionado: KDE Plasma${NC}"
elif [ "$choice_de" == "2" ]; then
    DE_PACKAGE="xfce4 xfce4-goodies thunar htop"
    DE_START="startxfce4"
    echo -e "${GREEN}[+] Seleccionado: XFCE${NC}"
else
    DE_START="none"
    echo -e "${GREEN}[+] Seleccionado: Sin Entorno Gráfico${NC}"
fi

SERVER_PACKAGES=""
if [ "$choice_server" == "1" ] || [ "$choice_server" == "3" ]; then
    SERVER_PACKAGES="$SERVER_PACKAGES tigervnc"
fi
if [ "$choice_server" == "2" ] || [ "$choice_server" == "3" ]; then
    SERVER_PACKAGES="$SERVER_PACKAGES termux-x11-nightly android-tools"
fi

if [ "$DE_START" != "none" ] || [ -n "$SERVER_PACKAGES" ]; then
    echo -e "${BLUE}[*] Instalando servidores gráficos y entorno de escritorio seleccionado...${NC}"
    pkg install $SERVER_PACKAGES $DE_PACKAGE -y
fi

# ==============================================================================
# 5. INSTALACIÓN DE COMPONENTES OPCIONALES
# ==============================================================================
if [[ "$choice_ai" =~ ^[sS]$ ]]; then
    echo -e "${BLUE}[*] Instalando suite de Inteligencia Artificial (Ollama + OpenCode)...${NC}"
    pkg install ollama -y
    
    # Binarios OpenCode
    if [ ! -f "$PREFIX/bin/opencode" ]; then
        curl -L -o opencode.zip 'https://github.com/guysoft/opencode-termux/releases/latest/download/opencode-1.17.9-android-aarch64.zip'
        unzip -o opencode.zip
        mkdir -p $PREFIX/libexec/opencode $PREFIX/lib
        mv -f opencode $PREFIX/bin/opencode && chmod +x $PREFIX/bin/opencode
        mv -f opencode.bin $PREFIX/libexec/opencode/opencode.bin && chmod +x $PREFIX/libexec/opencode/opencode.bin
        mv -f libtagfix.so libc++_shared.so libopentui.so $PREFIX/lib/ 2>/dev/null || true
        rm -f opencode.zip
    fi
fi

if [[ "$choice_n8n" =~ ^[sS]$ ]]; then
    echo -e "${BLUE}[*] Desplegando automatización con n8n...${NC}"
    if [ ! -f "termux-n8n-native.sh" ]; then
        curl -o termux-n8n-native.sh 'https://raw.githubusercontent.com/Yerensoncasares/termux-dev-station/main/termux-n8n-native.sh'
    fi
    chmod +x termux-n8n-native.sh
    bash termux-n8n-native.sh || echo -e "${YELLOW}[!] n8n instalado con avisos.${NC}"
fi

if [[ "$choice_godot" =~ ^[sS]$ ]]; then
    echo -e "${BLUE}[*] Instalando Godot Engine...${NC}"
    pkg install godot -y
fi

if [[ "$choice_dev" =~ ^[sS]$ ]] || [ -z "${choice_dev}" ]; then
    echo -e "${BLUE}[*] Instalando herramientas de desarrollo y multimedia...${NC}"
    pkg install pulseaudio firefox python nodejs code-oss code-is-code-oss -y
fi

# ==============================================================================
# 6. CONFIGURACIÓN DE ENTORNO Y SCRIPTS AUTOMATIZADOS (VNC & X11)
# ==============================================================================
echo -e "${BLUE}[*] Generando scripts de automatización personalizados y configuraciones xstartup...${NC}"

# bashrc config
cat << 'EOF' >> ~/.bashrc
export OPENAI_API_KEY="ollama"
export OPENAI_API_BASE="http://localhost:11434/v1"
export GEMINI_API_KEY="tu-api-key-de-gemini-aqui"
export GALLIUM_DRIVER=virpipe
export MESA_GL_VERSION_OVERRIDE=4.0
clear
echo 'Termux Dev Station' | figlet 2>/dev/null || echo 'Termux Dev Station'
neofetch 2>/dev/null || true
EOF

# up.sh
cat << 'EOF' > up.sh
#!/data/data/com.termux/files/usr/bin/bash
apt list --upgradable
yes | pkg update && pkg upgrade -y
EOF
chmod +x up.sh

# Configuración VNC (si se eligió TigerVNC o Ambos)
if [ "$choice_server" == "1" ] || [ "$choice_server" == "3" ]; then
    mkdir -p ~/.vnc
    if [ "$choice_de" == "1" ]; then
        # xstartup para Plasma + VNC
        cat << 'EOF' > ~/.vnc/xstartup
#!/data/data/com.termux/files/usr/bin/sh
localhost="no"
export GALLIUM_DRIVER=virpipe
export MESA_GL_VERSION_OVERRIDE=4.0
xset s off &
xset -dpms &
export LANG=es_ES.UTF-8
export LANGUAGE=es_ES.UTF-8
export LC_ALL=C.UTF-8
export TMPDIR=/data/data/com.termux/files/usr/tmp
export XDG_RUNTIME_DIR=${TMPDIR}
export QT_QPA_PLATFORM=xcb

rm -rf $TMPDIR/.X11-unix/X*
rm -rf $TMPDIR/dbus-*
rm -rf $TMPDIR/pulse-*
rm -rf $HOME/.cache/ico*
rm -rf $HOME/.cache/kio*
rm -rf $HOME/.cache/plasma*
rm -rf $HOME/.cache/QtWebEngine
rm -f $HOME/.config/session/*

pulseaudio --start --exit-idle-time=-1 2>/dev/null
[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources
xfwm4 --replace --compositor=off & 2>/dev/null
dbus-launch --exit-with-session startplasma-x11
EOF
    else
        # xstartup para XFCE + VNC
        cat << 'EOF' > ~/.vnc/xstartup
#!/data/data/com.termux/files/usr/bin/sh
localhost="no"
export GALLIUM_DRIVER=virpipe
export MESA_GL_VERSION_OVERRIDE=4.0
xset s off &
xset -dpms &
export LANG=es_ES.UTF-8
export LANGUAGE=es_ES.UTF-8
export LC_ALL=C.UTF-8
export TMPDIR=/data/data/com.termux/files/usr/tmp
export XDG_RUNTIME_DIR=${TMPDIR}
export QT_QPA_PLATFORM=xcb

rm -rf $TMPDIR/.X11-unix/X*
rm -rf $TMPDIR/dbus-*
rm -rf $TMPDIR/pulse-*
rm -rf $HOME/.cache/sessions/*
rm -rf $HOME/.cache/xfce4*

pulseaudio --start --exit-idle-time=-1 2>/dev/null
[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources
dbus-launch --exit-with-session startxfce4
EOF
    fi
    chmod +x ~/.vnc/xstartup

    # vnc-on.sh
    cat << 'EOF' > vnc-on.sh
#!/data/data/com.termux/files/usr/bin/bash
termux-wake-lock
virgl_test_server_android 2>/dev/null &
pulseaudio --start --exit-idle-time=-1 2>/dev/null
vncserver :1 -geometry 1280x720 -depth 24
echo -e "\n[✓] Servidor VNC iniciado. Conéctate con tu visor VNC en: 127.0.0.1:5901"
EOF
    chmod +x vnc-on.sh
fi

# Configuración Termux-X11 (si se eligió Termux-X11 o Ambos)
if [ "$choice_server" == "2" ] || [ "$choice_server" == "3" ]; then
    cat << EOF > on.sh
#!/data/data/com.termux/files/usr/bin/bash
termux-wake-lock
am start com.termux.x11/com.termux.x11.MainActivity
export DISPLAY=:0
termux-x11 :0 &
sleep 2

virgl_test_server_android 2>/dev/null &

export LANG=es_ES.UTF-8
export LANGUAGE=es_ES.UTF-8
export LC_ALL=C.UTF-8
export TMPDIR=/data/data/com.termux/files/usr/tmp
export XDG_RUNTIME_DIR=\${TMPDIR}
export QT_QPA_PLATFORM=xcb

rm -rf \$TMPDIR/.X11-unix/X*
rm -rf \$TMPDIR/dbus-*
rm -rf \$TMPDIR/pulse-*
rm -rf \$HOME/.cache/sessions/*
rm -rf \$HOME/.cache/xfce4*

pulseaudio --start --exit-idle-time=-1 2>/dev/null
[ -r \$HOME/.Xresources ] && xrdb \$HOME/.Xresources
dbus-launch --exit-with-session $DE_START
EOF
    chmod +x on.sh
fi

# off.sh (Compatible con X11 y VNC)
cat << 'EOF' > off.sh
#!/data/data/com.termux/files/usr/bin/bash
termux-wake-unlock
export TMPDIR=/data/data/com.termux/files/usr/tmp

killall xfce4-session startplasma-x11 2>/dev/null
pkill xfwm4
pkill plasmashell
pkill virgl_test
pkill termux-x11
pkill Xvnc
vncserver -kill :1 2>/dev/null || true

killall dbus-daemon 2>/dev/null
pulseaudio --kill 2>/dev/null

rm -rf $TMPDIR/.X11-unix/X*
rm -rf $TMPDIR/dbus-*
rm -rf $TMPDIR/pulse-*
EOF
chmod +x off.sh

# ia.sh
cat << 'EOF' > ia.sh
#!/data/data/com.termux/files/usr/bin/bash
ollama serve > /dev/null 2>&1 & clear && opencode
EOF
chmod +x ia.sh

# Limpieza de cachés para liberar espacio
echo -e "${BLUE}[*] Realizando limpieza de cachés del sistema...${NC}"
npm cache clean --force 2>/dev/null || true
pip cache purge 2>/dev/null || true
pkg clean
apt autoremove --purge -y

echo -e "\n${GREEN}======================================================${NC}"
echo -e "${GREEN}     ¡INSTALACIÓN COMPLETADA EXITOSAMENTE!           ${NC}"
echo -e "${GREEN}======================================================${NC}"
if [ "$choice_server" == "1" ] || [ "$choice_server" == "3" ]; then
    echo -e "Para iniciar con VNC ejecuta:                 ${CYAN}vncserver${NC} (primera vez) o ${CYAN}./vnc-on.sh${NC}"
fi
if [ "$choice_server" == "2" ] || [ "$choice_server" == "3" ]; then
    echo -e "Para iniciar con Termux-X11 ejecuta:          ${CYAN}./on.sh${NC}"
fi
echo -e "Para apagar los servicios ejecutando:       ${CYAN}./off.sh${NC}"
echo -e "Para iniciar la IA ejecuta:              ${CYAN}./ia.sh${NC}"
echo -e "Para actualizar el sistema ejecuta:           ${CYAN}./up.sh${NC}"
echo -e "${GREEN}======================================================${NC}\n"
