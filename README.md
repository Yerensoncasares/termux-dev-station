# 📱 Termux-Dev-Station (Guía Definitiva Unificada)

La guía definitiva para convertir Termux en un entorno de desarrollo gráfico avanzado, acelerado por GPU y asistido por IA (con soporte para **KDE Plasma** o **XFCE**, y tanto para servidores **VNC** como **X11 / termux-x11**). VS Code, Godot Engine, OpenCode, Ollama, n8n y PulseAudio en tu Android. ¡Sin root ni scripts mágicos!

---

## 💡 Filosofía y Elección de Entorno

Esta guía unificada te permite elegir el entorno gráfico y el servidor de pantalla que mejor se adapten a las capacidades de tu dispositivo:

1. **Entorno de Escritorio (Desktop Environment - DE):**
   * **KDE Plasma:** Moderno, potente, altamente personalizable y completo. 
     * *Requisito:* Al menos **10 GB** de almacenamiento libre y 4 GB de RAM recomendados.
   * **XFCE:** Ligero, rápido y extremadamente eficiente en recursos.
     * *Requisito:* Ideal para dispositivos con almacenamiento o rendimiento ajustado (ahorra espacio y recursos).

2. **Servidor Gráfico (Display Server):**
   * **Servidor VNC (TigerVNC):** Estable, compatible con cualquier visor VNC (RealVNC, bVNC, etc.) en `127.0.0.1:5901`.
   * **X11 (Termux-X11 / termux-x11-nightly):** Servidor nativo de alto rendimiento con la aplicación `termux-x11` en `DISPLAY=:0`.

3. **Asistencia por IA:**
   * **LLM Local (Ollama + OpenCode):** Ejecución 100% offline con modelos optimizados como `qwen2.5-coder:1.5b`.
   * **Recomendación de IA Cloud:** Aunque las herramientas locales (Ollama/OpenCode) se dejan instaladas en el sistema, **se recomienda encarecidamente utilizar la API de Gemini (`GEMINI_API_KEY`)** para obtener la máxima velocidad y precisión en el desarrollo asistido por IA.

---

## ⚡ Aceleración de Hardware GPU (Mali / MediaTek / Exynos via VirGL + Vulkan + ANGLE)

Esta configuración habilita la **aceleración por GPU real**, delegando el renderizado 3D e interfaz a la GPU para mantener el dispositivo fresco y fluido (~36 °C).

---

## 📋 Requisitos Mínimos y Preparación

* **Sistema Operativo:** Android 8.0 o superior (Atención en Android 12+ con el *Phantom Process Killer*, solucionado en la Fase 6).
* **Memoria RAM:** 3 GB mínimo (4 GB recomendados).
* **Aplicaciones auxiliares:** 
  * [Termux](https://f-droid.org/en/packages/com.termux/) (F-Droid o GitHub Releases, recomendado APK específico `arm64-v8a`).
  * *Opcional según tu elección:* Cliente VNC (si usas VNC) o APK de **termux-x11-nightly** (si usas X11).

---

## Fase 1: Preparación del Sistema Base (`up.sh`)

Otorga permisos de almacenamiento, selecciona el repositorio espejo más rápido y actualiza los paquetes:

```bash
termux-setup-storage
termux-change-repo
pkg update && pkg upgrade -y
```

---

## Fase 2: Repositorios y Capa de Aceleración GPU (VirGL / ANGLE)

Añade los repositorios adicionales, herramientas básicas y librerías de aceleración gráfica:

```bash
pkg install tur-repo x11-repo -y
pkg install git unzip wget curl ripgrep -y
pkg install virglrenderer-android angle-android mesa-demos -y
```

### Modos de Ejecución del Servidor VirGL
```bash
# Opción 1: ANGLE + Vulkan (Recomendado para GPU Mali)
virgl_test_server_android --angle-vulkan 2>/dev/null &

# Opción 2: ANGLE + OpenGL ES
virgl_test_server_android --angle-gl 2>/dev/null &

# Opción 3: Modo Nativo (Fallback)
virgl_test_server_android 2>/dev/null &
```

---

## Fase 3: Configuración de Asistentes IA (Ollama + OpenCode + API Gemini)

### 1. Instalación de Ollama y Modelo Local
```bash
pkg install ollama -y
ollama serve &
```
En otra pestaña:
```bash
ollama pull qwen2.5-coder:1.5b
```

### 2. Binarios de OpenCode
```bash
curl -L -o opencode.zip 'https://github.com/guysoft/opencode-termux/releases/latest/download/opencode-1.17.9-android-aarch64.zip'
unzip opencode.zip

mkdir -p $PREFIX/libexec/opencode $PREFIX/lib
mv opencode $PREFIX/bin/opencode
chmod +x $PREFIX/bin/opencode

mv opencode.bin $PREFIX/libexec/opencode/opencode.bin
chmod +x $PREFIX/libexec/opencode/opencode.bin

mv libtagfix.so libc++_shared.so libopentui.so $PREFIX/lib/
```

### 3. Configuración de Entorno de IA (Ollama + Recomendación Gemini API)
Configura tus variables en `~/.bashrc`:
```bash
echo 'export OPENAI_API_KEY="ollama"' >> ~/.bashrc
echo 'export OPENAI_API_BASE="http://localhost:11434/v1"' >> ~/.bashrc
# Recomendado: Configurar API Key de Gemini para el asistente avanzado
echo 'export GEMINI_API_KEY="tu-api-key-de-gemini"' >> ~/.bashrc
source ~/.bashrc
```

---

## Fase 4: Despliegue de n8n y Limpieza de Almacenamiento

### 1. Instalación de n8n
```bash
curl -o termux-n8n-native.sh 'https://raw.githubusercontent.com/Yerensoncasares/termux-dev-station/main/termux-n8n-native.sh'
chmod +x termux-n8n-native.sh
bash termux-n8n-native.sh
```

### 2. Rutina de Limpieza de Espacio
```bash
npm cache clean --force
pip cache purge
pkg clean
apt autoremove --purge
rm -rf $PREFIX/tmp/*
```

---

## Fase 5: Instalación del Entorno Gráfico y Herramientas de Desarrollo

Elige e instala los paquetes correspondientes a tu escritorio favorito:

### Opción A: KDE Plasma (Completo / Alto Rendimiento)
```bash
pkg install plasma konsole dolphin htop -y
pkg install android-tools tigervnc -y
pkg install pulseaudio firefox godot -y
pkg install python nodejs code-oss code-is-code-oss -y
```

### Opción B: XFCE (Ligero / Optimizado)
```bash
pkg install xfce4 xfce4-goodies thunar htop -y
pkg install android-tools tigervnc -y
pkg install pulseaudio firefox godot -y
pkg install python nodejs code-oss code-is-code-oss -y
```

---

## Fase 6: Solución de Procesos Fantasma (Vía ADB Inalámbrico)

Desactiva el *Phantom Process Killer* de Android 12+ en Opciones de Desarrollador (Depuración por Wi-Fi):

```bash
adb pair 192.168.xxx.xxx:xxxxx xxxxxx
adb connect 192.168.xxx.xxx:xxxxx
adb shell "/system/bin/device_config set_sync_disabled_for_tests persistent"
adb shell "/system/bin/device_config put activity_manager max_phantom_processes 2147483647"
adb shell settings put global settings_enable_monitor_phantom_procs false
```

---

## Fase 7: Configuración del Servidor Gráfico (Elige tu método)

### Método 1: Usando Servidor VNC (TigerVNC)
Inicializa la contraseña VNC:
```bash
vncserver
vncserver -kill :1
```

Configura `~/.vnc/xstartup` según tu escritorio elegido:

* **Para KDE Plasma (`~/.vnc/xstartup`):**
```bash
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
```
*(Asigna permisos: `chmod +x ~/.vnc/xstartup`)*

* **Para XFCE (`~/.vnc/xstartup`):**
```bash
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
```
*(Asigna permisos: `chmod +x ~/.vnc/xstartup`)*

---

### Método 2: Usando X11 Nativo (`termux-x11-nightly`)
Si prefieres usar la app `termux-x11`, puedes utilizar el script de inicio integrado `on.sh` (compatible con XFCE o adaptado a Plasma cambiando `startxfce4` por `startplasma-x11`).

---

## Fase 8: Scripts de Automatización (`on.sh`, `off.sh`, `up.sh`, `ia.sh`)

En la carpeta de scripts se incluyen ejecutables para máxima comodidad:

### 1. Actualización (`up.sh`)
```bash
#!/data/data/com.termux/files/usr/bin/bash
apt list --upgradable
yes | pkg update && pkg upgrade -y
```

### 2. Iniciar Entorno X11 (`on.sh`)
```bash
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
export XDG_RUNTIME_DIR=${TMPDIR}
export QT_QPA_PLATFORM=xcb

rm -rf $TMPDIR/.X11-unix/X*
rm -rf $TMPDIR/dbus-*
rm -rf $TMPDIR/pulse-*
rm -rf $HOME/.cache/sessions/*
rm -rf $HOME/.cache/xfce4*

pulseaudio --start --exit-idle-time=-1 2>/dev/null
[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources
dbus-launch --exit-with-session startxfce4 # o startplasma-x11 para Plasma
```

### 3. Apagar Entorno (`off.sh`)
```bash
#!/data/data/com.termux/files/usr/bin/bash
termux-wake-unlock
export TMPDIR=/data/data/com.termux/files/usr/tmp

killall xfce4-session startplasma-x11 2>/dev/null
pkill xfwm4
pkill virgl_test
pkill termux-x11
killall dbus-daemon 2>/dev/null
pulseaudio --kill 2>/dev/null

rm -rf $TMPDIR/.X11-unix/X*
rm -rf $TMPDIR/dbus-*
rm -rf $TMPDIR/pulse-*
```

### 4. Asistente IA / OpenCode (`ia.sh`)
```bash
#!/data/data/com.termux/files/usr/bin/bash
ollama serve > /dev/null 2>&1 & clear && opencode
```

---

## 📜 Licencia
MIT License.
