# 📱 Termux-Dev-Station: The Ultimate Native Android Development Station
**A Systemic Flow project**

![Termux](https://img.shields.io/badge/Termux-000000?style=for-the-badge&logo=termux&logoColor=white)
![Android](https://img.shields.io/badge/Android-34A853?style=for-the-badge&logo=android&logoColor=white)
![XFCE](https://img.shields.io/badge/XFCE-CC0000?style=for-the-badge&logo=xfce&logoColor=white)
![Vulkan](https://img.shields.io/badge/Vulkan-AC1820?style=for-the-badge&logo=vulkan&logoColor=white)
![Code - OSS](https://img.shields.io/badge/VS_Code-007ACC?style=for-the-badge&logo=visual-studio-code&logoColor=white)
![Godot Engine](https://img.shields.io/badge/Godot_Engine-478CBF?style=for-the-badge&logo=godot-engine&logoColor=white)
![Vanilla Web](https://img.shields.io/badge/Vanilla_Web-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)
![Node.js](https://img.shields.io/badge/Node.js-5FA04E?style=for-the-badge&logo=node.js&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Node-RED](https://img.shields.io/badge/Node--RED-8F0000?style=for-for-the-badge&logo=node-red&logoColor=white)
![Ollama](https://img.shields.io/badge/Ollama-000000?style=for-the-badge&logo=ollama&logoColor=white)
![OpenCode](https://img.shields.io/badge/OpenCode-6C5CE7?style=for-the-badge&logo=terminal&logoColor=white)
![OpenRouter](https://img.shields.io/badge/OpenRouter-652B19?style=for-the-badge&logo=openai&logoColor=white)
![Open Source](https://img.shields.io/badge/Open_Source-Success?style=for-the-badge)

<div align="center">

🌐 **Idiomas disponibles / Available Languages:**

[🇪🇸 Español](README.md) | [🇺🇸 English](README_EN.md) | [🇨🇳 中文](README_ZH.md) | [🇧🇷 Português](README_PT.md)

</div>

Welcome! If you have ever wanted to transform your Android device (in DeX mode, connected to an external monitor, or directly on your tablet/phone) into a real development workstation without needing root, heavy emulation layers, or dark magic scripts, you're in the right place.

This guide breaks the myth that you need to install full operating systems to do real programming on a phone. Here we combine **native performance, lightweight editors, and direct graphics acceleration** to build a 100% stable environment.

The guide combines the best of two worlds: **a friendly, accessible, step-by-step explanation** so any user understands what is happening on their device, alongside **exact technical precision**, complete commands, and automation scripts ready to squeeze maximum performance out of your hardware.

---

## 💡 Project Philosophy and Transparency

I've been down the road of trying outdated guides, heavy emulators, and automatic scripts that install entire Linux distributions (PRoot) and end up overloading the OS without you knowing what happened. This guide is different: **it is 100% native to Termux** and **does not** use blind automations.

There are no intermediate layers here. We use the pure Termux ecosystem to achieve the actual performance of your device's hardware. Every step is designed so you understand exactly what is being installed and configured.

Whether you are designing web interfaces with **HTML, CSS, and JS**, coding mechanics in **Godot Engine**, automating workflows with **Node-RED**, or programming with the help of an **AI**, understanding your environment natively will give you absolute control, eliminating latency and ensuring your station remains agile and stable.

---

## 🖼️ Environment Preview

This is what your workstation looks like once the process is complete and Systemic Flow customization is applied:

| XFCE Desktop (Optimized & Modern) | Code Editor (Code OSS) |
| :---: | :---: |
| ![XFCE Moderno](./img/xfce-modern-desktop.png) | ![VS Code](./img/vscode-bienvenida.png) |

| Video Game Engine Godot | AI Assistant with OpenCode |
| :---: | :---: |
| ![Godot](./img/godot-project-manager.png) | ![OpenCode](./img/opencode-asistente.png) |

| Automation with Node-RED | Web Browsing (Firefox) |
| :---: | :---: |
| ![Node-RED](./img/nodered-dashboard.png) | ![Firefox](./img/firefox-navegacion.png) |

---

## 📍 Table of Contents

1. [⚡ Hybrid Acceleration Architecture (VirGL + Vulkan + ANGLE)](#-hybrid-acceleration-architecture-virgl--vulkan--angle)
2. [📋 Environment and Display Server](#-environment-and-display-server)
3. [🚀 Prerequisites: Preparing Termux](#-prerequisites-preparing-termux)
4. [🛠️ Step-by-Step Installation Guide (Manual)](#️-step-by-step-installation-guide-manual)
   * [Phase 1: Base System Preparation](#phase-1-base-system-preparation)
   * [Phase 2: Repositories, System Utilities, and Graphics Acceleration Layer (VirGL)](#phase-2-repositories-system-utilities-and-graphics-acceleration-layer-virgl)
   * [Phase 3: Artificial Intelligence Assistants (Ollama + OpenCode + Gemini API)](#phase-3-artificial-intelligence-assistants-ollama--opencode--gemini-api)
   * [Phase 4: Node-RED Deployment and Smart Space Cleanup](#phase-4-node-red-deployment-and-smart-space-cleanup)
   * [Phase 5: Installing XFCE Desktop, Display Servers, and Tools](#phase-5-installing-xfce-desktop-display-servers-and-tools)
   * [Phase 6: Solution to Phantom Process Killing (Android 12+)](#phase-6-solution-to-phantom-process-killing-android-12)
   * [Phase 7: Boot Configuration (`xstartup` for VNC)](#phase-7-boot-configuration-xstartup-for-vnc)
   * [Phase 8: Visual Customization and Aesthetics (Systemic Flow)](#phase-8-visual-customization-and-aesthetics-systemic-flow)
   * [Phase 9: Enable GPU Acceleration in Launchers (Optional)](#phase-9-enable-gpu-acceleration-in-launchers-optional)
5. [🕹️ Automation Scripts (`up`, `on`, `vnc-on`, `off`)](#️-automation-scripts-up-on-vnc-on-off)
6. [📜 License](#-license)
   
---
   
## ⚡ Hybrid Acceleration Architecture (VirGL + Vulkan + ANGLE)

Unlike most guides limited to Snapdragon (Adreno) processors, this configuration enables **real GPU graphics acceleration on processors with Mali GPUs** (MediaTek, Exynos, etc.) through a native translation chain.

The real secret behind Systemic Flow's performance lies in our **on-demand architecture**:
1. We render the desktop environment via software (CPU) to ensure absolute stability, completely eliminating black screens and crashes (`BadMatch` errors).
2. We delegate 3D processing to the GPU in isolation **only** for applications that require it (such as Godot Engine or Firefox).

With this method, performance skyrockets, overall fluidity is complete, and your device stays cool (~36 °C) even under heavy workloads.

---

## 📋 Environment and Display Server

To ensure your device performs at its best without devouring RAM, we have optimized the options:

### 1. The Desktop: XFCE4
* **XFCE:** Lightweight, extremely fast, and minimalist. It is the standard for this guide. Later on, we will show you how to customize it with panels and menus so it looks as modern and professional as heavier environments, while consuming a fraction of the resources.

### 2. Choosing the Display Server
* **Native X11 (`termux-x11-nightly`):** Direct rendering on the device screen via its dedicated app (`DISPLAY=:0`), offering the lowest possible latency and best touch integration. This is the main recommended option.
* **VNC Server (TigerVNC):** Classic and universal. We keep it as an excellent alternative for users who need to work on large screens and do not have a projector, HDMI port, or DeX mode. It allows you to connect to `127.0.0.1:5901` from any VNC viewer on an external monitor over the local network.

*We will install both options so you have total flexibility!*

---

## 🚀 Prerequisites: Preparing Termux

To avoid incompatibilities with heavy universal packages, we recommend downloading the appropriate Termux APK for your architecture (preferably **`arm64-v8a`** from the official GitHub Releases instead of F-Droid, reducing the base size to ~30 MB).

---

## 🛠️ Step-by-Step Installation Guide (Manual)

### Phase 1: Base System Preparation
Grant storage permissions, update mirrors (optional if you wish to change servers), and update system packages:

```bash
termux-setup-storage
termux-change-repo  # (Optional: run this if you wish to change repository mirrors)
apt list --upgradable
apt full-upgrade -y
```

### Phase 2: Repositories, System Utilities, and Graphics Acceleration Layer (VirGL)
We add essential community repositories (`tur-repo`, `x11-repo`), network tools, essential system utilities for process management (`procps` for `killall` and `pkill`), terminal decorations (`figlet`, `neofetch`), and prepare the advanced graphics acceleration layer for Mali processors using ANGLE and Vulkan:

```bash
pkg install tur-repo x11-repo -y
pkg install git unzip wget curl ripgrep procps figlet neofetch -y
pkg install virglrenderer virglrenderer-android angle-android vulkan-loader-generic openssl -y

# 1. Remove conflicting software renderers if present
pkg remove '*icd-swrast' 2>/dev/null

# 2. Install the Vulkan wrapper for Mesa
wget 'https://github.com/ar37-rs/virgl-angle/releases/download/latest/mesa-vulkan-icd-wrapper_25.0.0-1_aarch64.deb'
dpkg -i mesa-vulkan-icd-wrapper_25.0.0-1_aarch64.deb
rm mesa-vulkan-icd-wrapper_25.0.0-1_aarch64.deb

# 3. Install vgl tool to manage display server startup
wget 'https://github.com/ar37-rs/virgl-angle/raw/refs/heads/main/vgl'
chmod +x vgl && mv vgl $PREFIX/bin/
```

### Phase 3: Artificial Intelligence Assistants (Ollama + OpenCode + Gemini API)
We will keep local AI tools and recommend the best cloud standard:

1. **Installing Ollama and Local Model:**
   ```bash
   pkg install ollama -y
   ollama serve &
   ```
   *(In another Termux tab)*:
   ```bash
   ollama pull qwen2.5-coder:1.5b
   ```

2. **OpenCode Binaries:**
```bash
# 1. Get the clean download URL
LATEST_OPCODE=$(curl -s "https://api.github.com/repos/Haris131/opencode-termux/releases/latest" | grep "browser_download_url" | grep "aarch64.zip" | cut -d '"' -f 4)

# 2. Download, grant permissions, and install binary in system path
curl -L -o opencode.zip "$LATEST_OPCODE"
unzip opencode.zip
chmod +x opencode
mv opencode $PREFIX/bin/

# 3. Clean up residual zip file
rm opencode.zip
```

3. **Environment Variables Configuration (`~/.bashrc`):**
   You can configure your `~/.bashrc` file with the following structure (which includes welcome screen with `figlet` and `neofetch`, environment variables, and local/cloud AI support):
  ```bash
cat << 'EOF' >> ~/.bashrc
# Language / Locale Configuration (English UTF-8)
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=C.UTF-8

# Alias to enable GPU on demand for heavy apps (e.g.: gpu godot4)
alias gpu='env -u LIBGL_ALWAYS_SOFTWARE GALLIUM_DRIVER=virpipe MESA_GL_VERSION_OVERRIDE=4.1COMPAT MESA_GLSL_VERSION_OVERRIDE=410'

# AI Environment Variables (Ollama, Gemini, OpenRouter)
export OPENAI_API_KEY="ollama"
export OPENAI_API_BASE="http://localhost:11434/v1"
export GEMINI_API_KEY="your-gemini-api-key-here"
export OPENROUTER_API_KEY="your-openrouter-api-key-here"

clear
echo 'Systemic Flow Dev Station' | figlet 2>/dev/null || echo 'Termux Dev Station'
neofetch 2>/dev/null || true
EOF
source ~/.bashrc
   ```

### Phase 4: Node-RED Deployment and Smart Space Cleanup
We install the lightweight event-driven automation platform (Node-RED) and perform a deep cleanup routine to free up space:

```bash
curl -o termux-nodered-native.sh 'https://raw.githubusercontent.com/Yerensoncasares/termux-dev-station/main/termux-nodered-native.sh'
chmod +x termux-nodered-native.sh
bash termux-nodered-native.sh

# Storage cleanup routine
npm cache clean --force && pip cache purge 2>/dev/null
pkg clean && apt autoremove --purge -y
rm -rf $PREFIX/tmp/*
```

### Phase 5: Installing XFCE Desktop, Display Servers, and Tools
We install the XFCE4 graphical environment along with its essential plugins, display servers (`TigerVNC` and native `termux-x11-nightly` package), as well as audio system and native development tools:

```bash
# Ultra-lightweight XFCE environment and file manager
pkg install xfce4 xfce4-goodies thunar htop xfce4-places-plugin -y 

# Graphics servers and ADB tools
pkg install tigervnc android-tools -y
pkg install termux-x11-nightly -y  # High-fluidity native X11 server

# Multimedia, development, and native code editors
pkg install pulseaudio firefox godot python nodejs code-oss -y
```

### Phase 6: Solution to Phantom Process Killing (Android 12+)
To prevent Android from killing your background processes when switching apps, use Wireless ADB from Developer Options:

```bash
adb pair 192.168.xxx.xxx:xxxxx xxxxxx
adb connect 192.168.xxx.xxx:xxxxx
adb shell "/system/bin/device_config set_sync_disabled_for_tests persistent"
adb shell "/system/bin/device_config put activity_manager max_phantom_processes 2147483647"
adb shell settings put global settings_enable_monitor_phantom_procs false
```

### Phase 7: Boot Configuration (`xstartup` for VNC)
If you decide to use VNC, configure your startup file `~/.vnc/xstartup`:

1. Initialize VNC server to generate structure:
   ```bash
   vncserver && vncserver -kill :1
   ```
2. Edit `~/.vnc/xstartup`:
```bash
cat << 'EOF' > ~/.vnc/xstartup
#!/data/data/com.termux/files/usr/bin/sh

localhost="no"

# Force software rendering for XFCE environment (maximum stability)
export LIBGL_ALWAYS_SOFTWARE=1
export GALLIUM_DRIVER=llvmpipe

xset s off &
xset -dpms &

# Localization and temporary variables
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=C.UTF-8
export TMPDIR=/data/data/com.termux/files/usr/tmp
export XDG_RUNTIME_DIR=${TMPDIR}

# Load resources and launch XFCE session
[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources
dbus-launch --exit-with-session startxfce4
EOF
chmod +x ~/.vnc/xstartup
```

---

### Phase 8: Visual Customization and Aesthetics (Systemic Flow)
To make your environment look modern and minimalist, we will install UI themes, interactive command line, and icons.

Execute the following block to install `starship` (with Tokyo Night preset), `lsd`, and download the complete asset package of Systemic Flow (fonts, GTK themes, and cursors) directly from our official release:

```bash
# 1. Install official themes and terminal utilities
pkg install arc-gtk-theme papirus-icon-theme starship lsd fontconfig-utils -y

# 2. Configure Starship prompt (Tokyo Night Preset)
mkdir -p ~/.config
starship preset tokyo-night -o ~/.config/starship.toml

# 3. Clean up and install visual assets package
rm -rf ~/.fonts ~/.themes ~/.icons ~/assets.zip
curl -L -o ~/assets.zip "https://github.com/Yerensoncasares/termux-dev-station/releases/download/V1.0/assets.zip"
unzip -o ~/assets.zip -d ~/
rm ~/assets.zip
fc-cache -fv

# 4. Clean injection of aliases and Starship into ~/.bashrc
grep -q 'starship init bash' ~/.bashrc || echo 'eval "$(starship init bash)"' >> ~/.bashrc
grep -q 'alias ls="lsd"' ~/.bashrc || echo 'alias ls="lsd"' >> ~/.bashrc

# 5. Apply changes to current session
source ~/.bashrc
```

 ---
 
 ### Phase 9: Enable GPU Acceleration in Launchers (Optional)
Our architecture renders the UI via software for maximum stability, but you can enable GPU on demand for heavy applications (such as **Code-OSS**, **Godot Engine**, or **Firefox**) without needing to use terminal.

To open them directly from Whisker Menu or Bottom Panel with hardware acceleration:

1. Right-click on the application in Whisker Menu or Panel and select **Edit Application** (or *Properties*).
2. In the **Command** field, prepend the following GPU prefix before the program path:

`env -u LIBGL_ALWAYS_SOFTWARE GALLIUM_DRIVER=virpipe MESA_GL_VERSION_OVERRIDE=4.1COMPAT MESA_GLSL_VERSION_OVERRIDE=410`

**Examples of how the complete line should look:**
* **Code-OSS:** `env -u LIBGL_ALWAYS_SOFTWARE GALLIUM_DRIVER=virpipe MESA_GL_VERSION_OVERRIDE=4.1COMPAT MESA_GLSL_VERSION_OVERRIDE=410 /data/data/com.termux/files/usr/bin/code-oss %F`
* **Godot Engine:** `env -u LIBGL_ALWAYS_SOFTWARE GALLIUM_DRIVER=virpipe MESA_GL_VERSION_OVERRIDE=4.1COMPAT MESA_GLSL_VERSION_OVERRIDE=410 godot %u`

> **Note:** It is not necessary (nor recommended) to apply this adjustment to lightweight system tools like file manager or task manager.
>

---

## 🕹️ Automation Scripts (`up`, `on`, `vnc-on`, `off`)

To avoid having to write long commands every time you turn your station on or off, you can create these scripts in your working directory (or in `~/`). Make sure to give them execution permissions with `chmod +x <script-name>.sh`.

### 1. System Update Script (`up`)
Updates package list and entire system unattended.
```bash
cat << 'EOF' > $PREFIX/bin/up
#!/data/data/com.termux/files/usr/bin/bash
apt list --upgradable
yes | pkg update && pkg upgrade -y
EOF
chmod +x $PREFIX/bin/up
```

### 2. Native X11 Startup Script (`on`)
Starts WakeLock to prevent system sleep, cleans up previous sockets, starts ANGLE/Vulkan server via `vgl`, launches Termux-X11 app, configures PulseAudio, and launches XFCE cleanly using software rendering for maximum stability.
```bash
cat << 'EOF' > $PREFIX/bin/on
#!/data/data/com.termux/files/usr/bin/bash

termux-wake-lock
am force-stop com.termux.x11 2>/dev/null
pkill -9 -f termux-x11 2>/dev/null
vgl q 2>/dev/null
pkill -9 -f virgl 2>/dev/null
sleep 1

TMPDIR=/data/data/com.termux/files/usr/tmp
rm -rf "$TMPDIR"/.X11-unix/X* "$TMPDIR"/dbus-* "$TMPDIR"/pulse-* "$HOME"/.cache/sessions/*

# Start display server in Vulkan mode
vgl angle=vulkan &
sleep 2

# Start X11 and Android app
export DISPLAY=:0
termux-x11 :0 -ac &
sleep 2
am start --user 0 -n com.termux.x11/.MainActivity >/dev/null 2>&1

# Audio setup and safe environment
pulseaudio --start --exit-idle-time=-1 2>/dev/null
export LANG=en_US.UTF-8
export LIBGL_ALWAYS_SOFTWARE=1
export GALLIUM_DRIVER=llvmpipe

[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources

# Run XFCE components separately to prevent startup loops
dbus-run-session -- bash -c '
  xfsettingsd &
  sleep 1
  xfwm4 &
  sleep 1
  xfdesktop &
  xfce4-panel &
  wait
'
EOF
chmod +x $PREFIX/bin/on
```
### 3. VNC Startup Script (`vnc-on`)
Starts VirGL graphics server, PulseAudio audio service, and TigerVNC server on `127.0.0.1:5901`.
```bash
cat << 'EOF' > $PREFIX/bin/vnc-on
#!/data/data/com.termux/files/usr/bin/bash

termux-wake-lock
export TMPDIR=/data/data/com.termux/files/usr/tmp

# 1. Extreme prior cleanup (prevents "A VNC server is already running as :1" error)
vncserver -kill :1 >/dev/null 2>&1
rm -rf "$TMPDIR"/.X11-unix/X1 "$TMPDIR"/dbus-* "$TMPDIR"/pulse-* "$HOME"/.vnc/*.pid "$HOME"/.vnc/*.log

# 2. Start display server in Vulkan mode and deep cleanup (Consistency with X11)
vgl q 2>/dev/null
pkill -9 -f virgl 2>/dev/null
vgl angle=vulkan &
sleep 2
sync

# 3. Audio
pulseaudio --start --exit-idle-time=-1 2>/dev/null

# 4. Start VNC
vncserver :1 -geometry 1280x720 -depth 24 -localhost no
echo -e "\n[✓] VNC Server started. Connect with your viewer at: 127.0.0.1:5901"
renice -n -10 -p $(pgrep -f vncserver) 2>/dev/null
EOF
chmod +x $PREFIX/bin/vnc-on
```

### 4. Clean Shutdown Script (`off`)
Stops graphics daemons, X11/VNC/VirGL servers, releases PulseAudio, and cleans up temporary sockets.
```bash
cat << 'EOF' > $PREFIX/bin/off
#!/data/data/com.termux/files/usr/bin/bash

termux-wake-unlock
export TMPDIR=/data/data/com.termux/files/usr/tmp

echo "Shutting down development station..."

# 1. Kill XFCE environment ruthlessly
killall -9 xfce4-session startxfce4 xfwm4 xfdesktop xfce4-panel 2>/dev/null

# 2. Stop Graphics Servers (VNC, X11, and Vulkan)
vncserver -kill :1 >/dev/null 2>&1
pkill -9 Xvnc 2>/dev/null
am force-stop com.termux.x11 2>/dev/null
pkill -9 -f termux-x11 2>/dev/null
vgl q 2>/dev/null
pkill -9 -f virgl 2>/dev/null

# 3. Stop D-Bus and Audio
killall -9 dbus-daemon 2>/dev/null
pulseaudio --kill 2>/dev/null

# 4. Deep cleanup of temporaries and accumulated garbage
rm -rf "$TMPDIR"/.X11-unix/X* "$TMPDIR"/dbus-* "$TMPDIR"/pulse-* 
rm -rf "$HOME"/.vnc/*.pid "$HOME"/.vnc/*.log "$HOME"/.cache/sessions/*

echo "[✓] Everything shut down and clean. Memory freed."
EOF
chmod +x $PREFIX/bin/off
```

> **Note:** To create and activate any of these scripts manually, you can create them with `nano <name>.sh`, paste the content, save it and run:
> ```bash
> chmod +x name.sh
> ```

---

## 📜 License
This project is distributed under the **MIT** license. Enjoy your new portable development station on Android!
