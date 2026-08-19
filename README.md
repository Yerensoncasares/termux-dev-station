# 📱 Termux-Dev-Station: Tu Estación de Desarrollo Definitiva en Android

![Termux](https://img.shields.io/badge/Termux-000000?style=for-the-badge&logo=termux&logoColor=white)
![KDE Plasma](https://img.shields.io/badge/KDE_Plasma-1D99F3?style=for-the-badge&logo=kde&logoColor=white)
![XFCE](https://img.shields.io/badge/XFCE-CC0000?style=for-the-badge&logo=xfce&logoColor=white)
![Godot Engine](https://img.shields.io/badge/Godot_Engine-478CBF?style=for-the-badge&logo=godot-engine&logoColor=white)
![Ollama](https://img.shields.io/badge/Ollama-000000?style=for-the-badge&logo=ollama&logoColor=white)
![n8n](https://img.shields.io/badge/n8n-FF6D5A?style=for-the-badge&logo=n8n&logoColor=white)
![Open Source](https://img.shields.io/badge/Open_Source-Success?style=for-the-badge)

¡Bienvenido! Si alguna vez has querido transformar tu dispositivo Android (en modo DeX, conectado a un monitor externo o directamente en tu tablet/móvil) en una auténtica computadora de desarrollo sin necesidad de root ni scripts mágicos y oscuros, estás en el lugar correcto.

Esta guía combina lo mejor de dos mundos: **una explicación amigable, accesible y explicada paso a paso** para que cualquier usuario común entienda cada componente, junto con **la precisión técnica exacta**, comandos completos, configuraciones de arranque y scripts de automatización listos para usar.

---

## 💡 Filosofía del Proyecto y Transparencia

He recorrido el camino de probar guías desactualizadas y scripts automáticos que rompen el sistema operativo sin que sepas qué pasó. Esta guía **no** utiliza automatizaciones a ciegas. Cada paso está diseñado para que comprendas exactamente qué se está instalando y configurando en tu dispositivo.

Ya sea que estés maquetando interfaces web con **HTML, CSS y JS**, programando mecánicas en **Godot Engine**, automatizando flujos con **n8n**, o programando con la ayuda de una **IA**, entender el entorno te dará el control absoluto y la tranquilidad de que tu estación es 100% estable.

---

## 🖼️ Vista Previa del Entorno

Así es como luce tu estación de trabajo una vez completado el proceso:

| Escritorio KDE Plasma | Editor de código VS Code |
| :---: | :---: |
| ![KDE Plasma](./img/kde-plasma-desktop.png) | ![VS Code](./img/vscode-bienvenida.png) |

| Motor de videojuegos Godot | Asistente de IA con OpenCode |
| :---: | :---: |
| ![Godot](./img/godot-project-manager.png) | ![OpenCode](./img/opencode-asistente.png) |

| Automatización con n8n | Rendimiento GPU (VirGL / glxgears) |
| :---: | :---: |
| ![n8n](./img/n8n-dashboard.png) | ![GPU Benchmark](./img/gpu-virgl-benchmark.png) |

| Navegación web con Firefox | Monitor del Sistema (htop) |
| :---: | :---: |
| ![Firefox](./img/firefox-navegacion.png) | ![htop](./img/htop-terminal.png) |

---

## ⚡ Aceleración de Hardware por GPU (VirGL + Vulkan + ANGLE)

A diferencia de la mayoría de guías limitadas a procesadores Qualcomm Adreno, esta configuración habilita la **aceleración gráfica por GPU real en procesadores con GPU Mali** (MediaTek, Exynos, etc.). 

Al delegar el procesamiento visual y 3D a la GPU en lugar de forzar a la CPU, el rendimiento se dispara, la fluidez es total y tu dispositivo se mantiene fresco (~36 °C) incluso bajo tareas pesadas.

---

## 📋 ¿Qué entorno elegir según tu dispositivo?

Antes de comenzar, es importante tomar dos decisiones clave según el espacio y los gustos que tengas:

### 1. Elección de Escritorio (Desktop Environment)
* **KDE Plasma:** Hermoso, moderno, repleto de herramientas nativas (`Dolphin`, `Konsole`). 
  * *Requisito:* Te recomendamos tener al menos **10 GB de almacenamiento libre** y 4 GB de RAM.
* **XFCE:** Ligero, sumamente rápido y minimalista.
  * *Requisito:* Ideal si tienes almacenamiento ajustado o buscas exprimir cada gota de rendimiento.

### 2. Elección del Servidor Gráfico (Display Server)
* **Servidor VNC (TigerVNC):** Clásico y universal. Te conectas mediante cualquier aplicación visor VNC en `127.0.0.1:5901`.
* **X11 Nativo (`termux-x11-nightly`):** Renderizado directo en pantalla mediante la app dedicada de Termux-X11 (`DISPLAY=:0`), ofreciendo menor latencia y mejor integración táctil. *¡Instalaremos ambas opciones para que elijas tu favorita!*

---

## 🚀 Paso Previo: Preparando Termux
Para evitar incompatibilidades con paquetes universales pesados, te recomendamos descargar el APK de Termux adecuado para tu arquitectura (preferiblemente **`arm64-v8a`** desde los Releases oficiales de GitHub en lugar de F-Droid, reduciendo el tamaño base a ~30 MB).

---

## ⚡ Método Rápido e Interactivo (Instalador Automático `install.sh`)

Si prefieres automatizar todo el proceso sin configurar cada fase a mano, cuentas con nuestro **script instalador interactivo, modular y con control de errores**

### Características del Instalador Automático:
* **Verificación de Seguridad y Entorno:** Valida estrictamente que estés ejecutando en Termux y verifica el espacio libre en almacenamiento.
* **Manejo de Errores:** Control estricto con `set -e`, `set -u` y `trap` para abortar de forma limpia si ocurre algún fallo.
* **Menú Interactivo Modular:** Te permite elegir de forma guiada:
  * Entorno de Escritorio (KDE Plasma, XFCE o Ninguno).
  * Servidor Gráfico (TigerVNC, Termux-X11 o Ambos).
  * Componentes Opcionales (Suite de IA Ollama + OpenCode, Automatización n8n, Godot Engine y Herramientas Dev / VS Code / Python / Node.js).
* **Generación Automática de Scripts:** Configura automáticamente `on.sh`, `vnc-on.sh`, `off.sh`, `ia.sh`, `up.sh` y el archivo `~/.vnc/xstartup`.

### ¿Cómo ejecutarlo en un solo comando?
Puedes descargar y ejecutar el instalador directamente desde GitHub con:
```bash
curl -O https://raw.githubusercontent.com/Yerensoncasares/termux-dev-station/main/install.sh && bash install.sh
```

---

## 🛠️ Guía de Instalación Paso a Paso (Manual)

### Fase 1: Preparación del Sistema Base
Otorgamos permisos de almacenamiento, actualizamos espejos y ponemos al día los paquetes del sistema:

```bash
termux-setup-storage
termux-change-repo
apt list --upgradable
apt full-upgrade -y
pkg update && pkg upgrade -y
```

### Fase 2: Repositorios, Utilidades del Sistema y Capa de Aceleración Gráfica (VirGL)
Añadimos los repositorios comunitarios esenciales (`tur-repo`, `x11-repo`), herramientas de red, utilidades del sistema imprescindibles para gestión de procesos (`procps` para `killall` y `pkill`), decoraciones de terminal (`figlet`, `neofetch`) y la capa gráfica:

```bash
pkg install tur-repo x11-repo -y
pkg install git unzip wget curl ripgrep procps figlet neofetch -y
pkg install virglrenderer-android angle-android mesa-demos -y
```

#### Modos de arranque del Servidor VirGL:
```bash
# Opción 1 recomendada para GPU Mali (ANGLE + Vulkan)
virgl_test_server_android --angle-vulkan 2>/dev/null &

# Opción 2 (ANGLE + OpenGL ES)
virgl_test_server_android --angle-gl 2>/dev/null &

# Opción 3 (Modo Nativo / Fallback)
virgl_test_server_android 2>/dev/null &
```

### Fase 3: Asistentes de Inteligencia Artificial (Ollama + OpenCode + API Gemini)
Mantendremos herramientas locales de IA y te recomendaremos el mejor estándar en la nube:

1. **Instalación de Ollama y Modelo Local:**
   ```bash
   pkg install ollama -y
   ollama serve &
   ```
   *(En otra pestaña de Termux)*:
   ```bash
   ollama pull qwen2.5-coder:1.5b
   ```

2. **Binarios de OpenCode:**
   ```bash
   curl -L -o opencode.zip 'https://github.com/guysoft/opencode-termux/releases/latest/download/opencode-1.17.9-android-aarch64.zip'
   unzip opencode.zip
   mkdir -p $PREFIX/libexec/opencode $PREFIX/lib
   mv opencode $PREFIX/bin/opencode && chmod +x $PREFIX/bin/opencode
   mv opencode.bin $PREFIX/libexec/opencode/opencode.bin && chmod +x $PREFIX/libexec/opencode/opencode.bin
   mv libtagfix.so libc++_shared.so libopentui.so $PREFIX/lib/
   ```

3. **Configuración de Variables (`~/.bashrc`):**
   Puedes configurar tu archivo `~/.bashrc` con la siguiente estructura (que incluye bienvenida con `figlet` y `neofetch`, variables de entorno y soporte de IA local/cloud):
   ```bash
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
   source ~/.bashrc
   ```

### Fase 4: Despliegue de n8n y Limpieza Inteligente de Espacio
Instalamos la automatización de flujos con n8n y limpiamos cachés para recuperar gigabytes de almacenamiento:

```bash
curl -o termux-n8n-native.sh 'https://raw.githubusercontent.com/Yerensoncasares/termux-dev-station/main/termux-n8n-native.sh'
chmod +x termux-n8n-native.sh
bash termux-n8n-native.sh

# Rutina de limpieza de almacenamiento
npm cache clean --force && pip cache purge
pkg clean && apt autoremove --purge
rm -rf $PREFIX/tmp/*
```

### Fase 5: Instalación de Entornos Gráficos, Servidores VNC y X11 (`termux-x11-nightly`)
Instalamos tanto el entorno gráfico que prefieras (Plasma o XFCE), los servidores de visualización (**TigerVNC** y el paquete nativo **`termux-x11-nightly`**), además de audio y herramientas de desarrollo:

```bash
# Elige tu escritorio (ej. plasma o xfce4):
# pkg install plasma konsole dolphin htop -y   # (Para KDE Plasma)
pkg install xfce4 xfce4-goodies thunar htop -y # (Para XFCE)

# Servidores gráficos y utilidades
pkg install tigervnc android-tools -y
pkg install termux-x11-nightly -y  # Servidor X11 nativo integrado

# Multimedia, desarrollo y utilidades
pkg install pulseaudio firefox godot python nodejs code-oss code-is-code-oss -y
```

### Fase 6: Solución al Bloqueo de Procesos Fantasma (Android 12+)
Para evitar que Android mate tus procesos en segundo plano al cambiar de app, utiliza ADB Inalámbrico desde Opciones de Desarrollador:

```bash
adb pair 192.168.xxx.xxx:xxxxx xxxxxx
adb connect 192.168.xxx.xxx:xxxxx
adb shell "/system/bin/device_config set_sync_disabled_for_tests persistent"
adb shell "/system/bin/device_config put activity_manager max_phantom_processes 2147483647"
adb shell settings put global settings_enable_monitor_phantom_procs false
```

### Fase 7: Configuración de Arranque (`xstartup` para VNC)
Si decides usar VNC, configura tu archivo de inicio `~/.vnc/xstartup`:

1. Inicializa el servidor VNC para generar la estructura:
   ```bash
   vncserver && vncserver -kill :1
   ```
2. Edita `~/.vnc/xstartup`:
   ```bash
   nano ~/.vnc/xstartup
   ```

* **Plantilla para KDE Plasma (`~/.vnc/xstartup`):**
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

* **Plantilla para XFCE (`~/.vnc/xstartup`):**
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

No olvides otorgarle permisos de ejecución:
```bash
chmod +x ~/.vnc/xstartup
```

---

## 🕹️ Scripts de Automatización (`up.sh`, `on.sh`, `vnc-on.sh`, `off.sh`, `ia.sh`)

Para evitar tener que escribir comandos largos cada vez que enciendas o apagues tu estación, puedes crear estos scripts en tu directorio de trabajo (o en `~/`). Asegúrate de darles permisos con `chmod +x <nombre-script>.sh`.

### 1. Script de Actualización del Sistema (`up.sh`)
Actualiza la lista de paquetes y actualiza el sistema completo de forma desatendida.
```bash
#!/data/data/com.termux/files/usr/bin/bash
apt list --upgradable
yes | pkg update && pkg upgrade -y
```

### 2. Script de Encendido Gráfico X11 (`on.sh`)
Inicia el bloqueo WakeLock para evitar suspensión, arranca la app de Termux-X11, activa el servidor VirGL, configura audio PulseAudio y lanza tu entorno gráfico.
```bash
#!/data/data/com.termux/files/usr/bin/bash

# Anclar sesión para evitar suspensión
termux-wake-lock

# Iniciar aplicación Android Termux-X11
am start com.termux.x11/com.termux.x11.MainActivity

# Configuración de pantalla y servidor X11
export DISPLAY=:0
termux-x11 :0 &
sleep 2

# Activar aceleración gráfica VirGL
virgl_test_server_android 2>/dev/null &

# Configuración de localización y directorios temporales
export LANG=es_ES.UTF-8
export LANGUAGE=es_ES.UTF-8
export LC_ALL=C.UTF-8
export TMPDIR=/data/data/com.termux/files/usr/tmp
export XDG_RUNTIME_DIR=${TMPDIR}
export QT_QPA_PLATFORM=xcb

# Limpieza previa de sockets temporales y cachés
rm -rf $TMPDIR/.X11-unix/X*
rm -rf $TMPDIR/dbus-*
rm -rf $TMPDIR/pulse-*
rm -rf $HOME/.cache/sessions/*
rm -rf $HOME/.cache/xfce4*

# Iniciar PulseAudio
pulseaudio --start --exit-idle-time=-1 2>/dev/null

# Cargar recursos gráficos y arrancar escritorio (ej. XFCE o Plasma)
[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources
dbus-launch --exit-with-session startxfce4
```

### 3. Script de Encendido VNC (`vnc-on.sh`)
Inicia el servidor VirGL, PulseAudio y el servidor TigerVNC en `127.0.0.1:5901`.
```bash
#!/data/data/com.termux/files/usr/bin/bash
termux-wake-lock
virgl_test_server_android 2>/dev/null &
pulseaudio --start --exit-idle-time=-1 2>/dev/null
vncserver :1 -geometry 1280x720 -depth 24
echo -e "\n[✓] Servidor VNC iniciado. Conéctate con tu visor VNC en: 127.0.0.1:5901"
```

### 4. Script de Apagado Limpio (`off.sh`)
Detiene los demonios gráficos, servidores X11/VNC/VirGL, libera PulseAudio y limpia sockets temporales.
```bash
#!/data/data/com.termux/files/usr/bin/bash

termux-wake-unlock

export TMPDIR=/data/data/com.termux/files/usr/tmp

# 1. Terminar procesos gráficos, servidor VirGL y X11/VNC
killall xfce4-session startplasma-x11 2>/dev/null
pkill xfwm4
pkill plasmashell
pkill virgl_test
pkill termux-x11
pkill Xvnc
vncserver -kill :1 2>/dev/null || true

# 2. Detener D-Bus y PulseAudio
killall dbus-daemon 2>/dev/null
pulseaudio --kill 2>/dev/null

# 3. Limpieza de sockets temporales y archivos de bloqueo
rm -rf $TMPDIR/.X11-unix/X*
rm -rf $TMPDIR/dbus-*
rm -rf $TMPDIR/pulse-*
```

### 5. Script de Inteligencia Artificial / OpenCode (`ia.sh`)
Inicia el servidor Ollama en segundo plano y abre la interfaz de OpenCode inmediatamente.
```bash
#!/data/data/com.termux/files/usr/bin/bash
ollama serve > /dev/null 2>&1 & clear && opencode
```

> **Nota:** Para crear y activar cualquiera de estos scripts manualmente, puedes crearlos con `nano <nombre>.sh`, pegar el contenido, guardarlo y ejecutar:
> ```bash
> chmod +x nombre.sh
> ```

---

## 📜 Licencia
Este proyecto se distribuye bajo la licencia **MIT**. ¡Disfruta tu nueva estación de desarrollo portátil en Android!
