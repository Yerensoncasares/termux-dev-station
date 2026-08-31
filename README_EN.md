# 📱 Termux-Dev-Station: The Ultimate Native Development Station on Android
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
![n8n](https://img.shields.io/badge/n8n-FF6D5A?style=for-the-badge&logo=n8n&logoColor=white)
![Ollama](https://img.shields.io/badge/Ollama-000000?style=for-the-badge&logo=ollama&logoColor=white)
![OpenCode](https://img.shields.io/badge/OpenCode-6C5CE7?style=for-the-badge&logo=terminal&logoColor=white)
![OpenRouter](https://img.shields.io/badge/OpenRouter-652B19?style=for-the-badge&logo=openai&logoColor=white)
![Open Source](https://img.shields.io/badge/Open_Source-Success?style=for-the-badge)

<div align="center">

🌐 **Available Languages:**

[🇪🇸 Español](README.md) | [🇺🇸 English](README_EN.md) | [🇨🇳 中文](README_ZH.md) | [🇧🇷 Português](README_PT.md)

</div>

Welcome! If you've ever wanted to turn your Android device (in DeX mode, connected to an external monitor, or directly on your tablet/phone) into a real development computer without needing root, heavy emulators, or complex scripts, you are in the right place.

This guide shatters the myth that you need to install entire operating systems to do real programming on a phone. Here, we combine **native performance, lightweight editors, and direct hardware graphics acceleration** to build a 100% stable environment.

This guide brings together the best of both worlds: **a friendly, accessible, step-by-step explanation** so any user understands what is happening on their device, alongside **exact technical precision**, full commands, and ready-to-use automation scripts to squeeze the most out of your hardware.

---

## 💡 Project Philosophy and Transparency

I have been through outdated guides, clunky emulators, and automated scripts that install entire Linux distributions (PRoot) and end up overloading the OS without you knowing what happened. This guide is different: **it is 100% native to Termux** and does **not** use blind automation.

There are no middle layers here. We use the pure Termux ecosystem to achieve the true hardware performance of your device. Every step has been designed so you know exactly what is being installed and configured.

Whether you are laying out web interfaces with **HTML, CSS, and JS**, programming mechanics in **Godot Engine**, automating workflows with **n8n**, or coding with the help of an **AI**, understanding your environment natively will give you absolute control, eliminating latency and ensuring your workstation is fast and stable.

---

## 🖼️ Environment Preview

Here is what your workstation looks like once the setup is complete and the Systemic Flow customization is applied:

| XFCE Desktop (Optimized & Modern) | Code Editor (Code OSS) |
| :---: | :---: |
| ![Modern XFCE](./img/xfce-modern-desktop.png) | ![VS Code](./img/vscode-bienvenida.png) |

| Godot Game Engine | AI Assistant with OpenCode |
| :---: | :---: |
| ![Godot](./img/godot-project-manager.png) | ![OpenCode](./img/opencode-asistente.png) |

| Automation with n8n | Web Browsing (Firefox) |
| :---: | :---: |
| ![n8n](./img/n8n-dashboard.png) | ![Firefox](./img/firefox-navegacion.png) |

---

## 📍 Table of Contents

1. [⚡ Hybrid Acceleration Architecture (VirGL + Vulkan + ANGLE)](#-hybrid-acceleration-architecture-virgl--vulkan--angle)
2. [📋 Desktop Environment and Display Server](#-desktop-environment-and-display-server)
3. [🚀 Prerequisite: Preparing Termux](#-prerequisite-preparing-termux)
4. [🛠️ Step-by-Step Installation Guide (Manual)](#️-step-by-step-installation-guide-manual)
   * [Phase 1: Base System Preparation](#phase-1-base-system-preparation)
   * [Phase 2: Repositories, Utilities, and Acceleration Layer (VirGL)](#phase-2-repositories-utilities-and-acceleration-layer-virgl)
   * [Phase 3: Artificial Intelligence Assistants (Ollama + OpenCode + Gemini API)](#phase-3-artificial-intelligence-assistants-ollama--opencode--gemini-api)
   * [Phase 4: n8n Deployment and Smart Cleanup](#phase-4-n8n-deployment-and-smart-cleanup)
   * [Phase 5: XFCE Installation, Display Servers, and Tools](#phase-5-xfce-installation-display-servers-and-tools)
   * [Phase 6: Solution Against Process Killing (Android 12+)](#phase-6-solution-against-process-killing-android-12)
   * [Phase 7: Startup Configuration (`xstartup` for VNC)](#phase-7-startup-configuration-xstartup-for-vnc)
   * [Phase 8: Visual and Aesthetic Customization (Systemic Flow)](#phase-8-visual-and-aesthetic-customization-systemic-flow)
   * [Phase 9: Enable GPU in Launchers (Optional)](#phase-9-enable-gpu-in-launchers-optional)
5. [🕹️ Automation Scripts (`up`, `on`, `vnc-on`, `off`)](#️-automation-scripts-up-on-vnc-on-off)
6. [📜 License](#-license)

---

## ⚡ Hybrid Acceleration Architecture (VirGL + Vulkan + ANGLE)

Unlike most guides limited to Snapdragon processors (Adreno), this setup enables **real GPU hardware acceleration on devices with Mali GPUs** (MediaTek, Exynos, etc.) through a native translation chain.

The true secret to Systemic Flow's performance lies in our **on-demand architecture**:
1. We render the desktop environment via software (CPU) to ensure absolute stability, entirely eliminating black screens and crashes (`BadMatch` errors).
2. We delegate 3D processing to the GPU in an isolated manner **only** for demanding applications (like Godot Engine or Firefox).

With this method, performance skyrockets, smoothness is absolute, and your device remains cool (~36 °C) even under heavy workloads.

---

## 📋 Desktop Environment and Display Server

To ensure your device performs at its best without devouring RAM, we have optimized the choices:

### 1. The Desktop: XFCE4
* **XFCE:** Lightweight, incredibly fast, and minimalist. It is the standard for this guide. Later, we will show you how to customize it so it looks just as modern and professional as heavier environments, but using a fraction of the resources.

### 2. Choosing the Display Server
* **Native X11 (`termux-x11-nightly`):** Direct rendering on the device screen through its dedicated app (`DISPLAY=:0`), offering the lowest possible latency and the best touch integration. This is the primary recommended option.
* **VNC Server (TigerVNC):** Classic and universal. We keep it as an excellent alternative for users who need to work on large screens and lack a projector, HDMI port, or DeX mode. It allows you to connect to `127.0.0.1:5901` from any VNC viewer on an external monitor over a local network.

*We will install both options so you have total flexibility!*

---

## 🚀 Prerequisite: Preparing Termux

To avoid incompatibilities with heavy universal packages, we recommend downloading the appropriate APK for your architecture (preferably **`arm64-v8a`** from the official GitHub Releases rather than F-Droid, reducing the base size to ~30 MB).

---

## 🛠️ Step-by-Step Installation Guide (Manual)

### Phase 1: Base System Preparation
We grant storage permissions, update mirrors, and keep system packages up to date:

```bash
termux-setup-storage
termux-change-repo
apt list --upgradable
apt full-upgrade -y
```

### Phase 2: Repositories, Utilities, and Acceleration Layer (VirGL)
We add community repositories, indispensable system tools (`procps`, `figlet`, `neofetch`), and prepare the advanced graphic acceleration layer using ANGLE and Vulkan:

```bash
pkg install tur-repo x11-repo -y
pkg install git unzip wget curl ripgrep procps figlet neofetch -y
pkg install virglrenderer virglrenderer-android angle-android vulkan-loader-generic openssl -y

# 1. Remove conflicting software renderers
pkg remove '*icd-swrast' 2>/dev/null

# 2. Install Vulkan wrapper for Mesa
wget '[https://github.com/ar37-rs/virgl-angle/releases/download/latest/mesa-vulkan-icd-wrapper_25.0.0-1_aarch64.deb](https://github.com/ar37-rs/virgl-angle/releases/download/latest/mesa-vulkan-icd-wrapper_25.0.0-1_aarch64.deb)'
dpkg -i mesa-vulkan-icd-wrapper_25.0.0-1_aarch64.deb
rm mesa-vulkan-icd-wrapper_25.0.0-1_aarch64.deb

# 3. Install the vgl tool
wget '[https://github.com/ar37-rs/virgl-angle/raw/refs/heads/main/vgl](https://github.com/ar37-rs/virgl-angle/raw/refs/heads/main/vgl)'
chmod +x vgl && mv vgl $PREFIX/bin/
```

### Phase 3: Artificial Intelligence Assistants (Ollama + OpenCode + Gemini API)
We will keep local AI tools and recommend the best cloud standard:

1. **Ollama Installation:**
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
LATEST_OPCODE=$(curl -s "[https://api.github.com/repos/Haris131/opencode-termux/releases/latest](https://api.github.com/repos/Haris131/opencode-termux/releases/latest)" | grep "browser_download_url" | grep "aarch64.zip" | cut -d '"' -f 4)
curl -L -o opencode.zip "$LATEST_OPCODE"
unzip opencode.zip
chmod +x opencode
mv opencode $PREFIX/bin/
rm opencode.zip
```

3. **Environment Variables (`~/.bashrc`):**
  ```bash
cat << 'EOF' >> ~/.bashrc
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=C.UTF-8

alias gpu='env -u LIBGL_ALWAYS_SOFTWARE GALLIUM_DRIVER=virpipe MESA_GL_VERSION_OVERRIDE=4.1COMPAT MESA_GLSL_VERSION_OVERRIDE=410'

export OPENAI_API_KEY="ollama"
export OPENAI_API_BASE="http://localhost:11434/v1"
export GEMINI_API_KEY="your-gemini-key-here"
export OPENROUTER_API_KEY="your-openrouter-key-here"

clear
echo 'Systemic Flow Dev Station' | figlet 2>/dev/null || echo 'Termux Dev Station'
neofetch 2>/dev/null || true
EOF
source ~/.bashrc
   ```

### Phase 4: n8n Deployment and Smart Cleanup
We install n8n automation and clean caches to recover storage space:

```bash
curl -o termux-n8n-native.sh '[https://raw.githubusercontent.com/Yerensoncasares/termux-dev-station/main/termux-n8n-native.sh](https://raw.githubusercontent.com/Yerensoncasares/termux-dev-station/main/termux-n8n-native.sh)'
chmod +x termux-n8n-native.sh
bash termux-n8n-native.sh

npm cache clean --force && pip cache purge
pkg clean && apt autoremove --purge
rm -rf $PREFIX/tmp/*
```

### Phase 5: XFCE Installation, Display Servers, and Tools
```bash
pkg install xfce4 xfce4-goodies thunar htop -y 
pkg install tigervnc android-tools termux-x11-nightly -y
pkg install pulseaudio firefox godot python nodejs code-oss -y
```

### Phase 6: Solution Against Process Killing (Android 12+)
To prevent Android from killing your background processes:
```bash
adb pair 192.168.xxx.xxx:xxxxx xxxxxx
adb connect 192.168.xxx.xxx:xxxxx
adb shell "/system/bin/device_config set_sync_disabled_for_tests persistent"
adb shell "/system/bin/device_config put activity_manager max_phantom_processes 2147483647"
adb shell settings put global settings_enable_monitor_phantom_procs false
```

### Phase 7: Startup Configuration (`xstartup` for VNC)
```bash
vncserver && vncserver -kill :1

cat << 'EOF' > ~/.vnc/xstartup
#!/data/data/com.termux/files/usr/bin/sh
localhost="no"
export LIBGL_ALWAYS_SOFTWARE=1
export GALLIUM_DRIVER=llvmpipe
xset s off &
xset -dpms &
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=C.UTF-8
export TMPDIR=/data/data/com.termux/files/usr/tmp
export XDG_RUNTIME_DIR=${TMPDIR}
[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources
dbus-launch --exit-with-session startxfce4
EOF
chmod +x ~/.vnc/xstartup
```

### Phase 8: Visual and Aesthetic Customization (Systemic Flow)
```bash
pkg install arc-gtk-theme papirus-icon-theme starship lsd -y
mkdir -p ~/.config
starship preset tokyo-night -o ~/.config/starship.toml

rm -rf ~/.fonts ~/.themes ~/.icons ~/assets.zip
curl -L -o ~/assets.zip "[https://github.com/Yerensoncasares/termux-dev-station/releases/download/V1.0/assets.zip](https://github.com/Yerensoncasares/termux-dev-station/releases/download/V1.0/assets.zip)"
unzip -o ~/assets.zip -d ~/
rm ~/assets.zip
fc-cache -fv

grep -q 'starship init bash' ~/.bashrc || echo 'eval "$(starship init bash)"' >> ~/.bashrc
grep -q 'alias ls="lsd"' ~/.bashrc || echo 'alias ls="lsd"' >> ~/.bashrc
source ~/.bashrc
```

### Phase 9: Enable GPU in Launchers (Optional)
You can enable on-demand GPU for heavy apps. Just add the following prefix in the **Command** field of the application shortcut:

`env -u LIBGL_ALWAYS_SOFTWARE GALLIUM_DRIVER=virpipe MESA_GL_VERSION_OVERRIDE=4.1COMPAT MESA_GLSL_VERSION_OVERRIDE=410`

---

## 🕹️ Automation Scripts (`up`, `on`, `vnc-on`, `off`)

Create these scripts in your binaries directory and give them execution permissions with `chmod +x <script-name>`.

### 1. Update Script (`up`)
```bash
cat << 'EOF' > $PREFIX/bin/up
#!/data/data/com.termux/files/usr/bin/bash
apt list --upgradable
yes | pkg update && pkg upgrade -y
EOF
chmod +x $PREFIX/bin/up
```

### 2. Native X11 Script (`on`)
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

vgl angle=vulkan &
sleep 2

export DISPLAY=:0
termux-x11 :0 -ac &
sleep 2
am start --user 0 -n com.termux.x11/.MainActivity >/dev/null 2>&1

pulseaudio --start --exit-idle-time=-1 2>/dev/null
export LANG=en_US.UTF-8
export LIBGL_ALWAYS_SOFTWARE=1
export GALLIUM_DRIVER=llvmpipe

[ -r $HOME/.Xresources ] && xrdb$HOME/.Xresources

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

### 3. VNC Script (`vnc-on`)
```bash
cat << 'EOF' > $PREFIX/bin/vnc-on
#!/data/data/com.termux/files/usr/bin/bash

termux-wake-lock
export TMPDIR=/data/data/com.termux/files/usr/tmp

vncserver -kill :1 >/dev/null 2>&1
rm -rf "$TMPDIR"/.X11-unix/X1 "$TMPDIR"/dbus-* "$TMPDIR"/pulse-* "$HOME"/.vnc/*.pid "$HOME"/.vnc/*.log

vgl q 2>/dev/null
pkill -9 -f virgl 2>/dev/null
vgl angle=vulkan &
sleep 2
sync

pulseaudio --start --exit-idle-time=-1 2>/dev/null
vncserver :1 -geometry 1280x720 -depth 24 -localhost no
echo -e "\n[✓] VNC Server started. Connect with your viewer: 127.0.0.1:5901"
renice -n -10 -p $(pgrep -f vncserver) 2>/dev/null
EOF
chmod +x $PREFIX/bin/vnc-on
```

### 4. Shutdown Script (`off`)
```bash
cat << 'EOF' > $PREFIX/bin/off
#!/data/data/com.termux/files/usr/bin/bash
termux-wake-unlock
export TMPDIR=/data/data/com.termux/files/usr/tmp
echo "Shutting down dev station..."

killall -9 xfce4-session startxfce4 xfwm4 xfdesktop xfce4-panel 2>/dev/null
vncserver -kill :1 >/dev/null 2>&1
pkill -9 Xvnc 2>/dev/null
am force-stop com.termux.x11 2>/dev/null
pkill -9 -f termux-x11 2>/dev/null
vgl q 2>/dev/null
pkill -9 -f virgl 2>/dev/null
killall -9 dbus-daemon 2>/dev/null
pulseaudio --kill 2>/dev/null

rm -rf "$TMPDIR"/.X11-unix/X* "$TMPDIR"/dbus-* "$TMPDIR"/pulse-* 
rm -rf "$HOME"/.vnc/*.pid "$HOME"/.vnc/*.log "$HOME"/.cache/sessions/*
echo "[✓] Everything is shut down and clean."
EOF
chmod +x $PREFIX/bin/off
```

---

## 📜 License
This project is distributed under the **MIT** license. Enjoy your new portable development station on Android!
