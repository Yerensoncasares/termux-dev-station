# 📱 Termux-Dev-Station：Android 上的终极原生开发工作站
**Systemic Flow 旗下项目**

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

🌐 **可用语言 / Available Languages:**

[🇪🇸 Español](README.md) | [🇺🇸 English](README_EN.md) | [🇨🇳 中文](README_ZH.md) | [🇧🇷 Português](README_PT.md)

</div>

欢迎！如果您曾经想过将您的 Android 设备（在 DeX 模式下，连接到外部显示器，或直接在平板电脑/手机上）变成一台真正的开发计算机，而无需 Root 权限、繁重的模拟器或复杂的脚本，那么您来对地方了。

本指南打破了需要在手机上安装完整操作系统才能进行真正编程的误区。在这里，我们结合了**原生性能、轻量级编辑器和直接的硬件图形加速**，构建了一个 100% 稳定的环境。

本指南结合了两个领域的优点：**友好、易懂、循序渐进的说明**，让任何用户都能了解设备上正在发生的事情，同时提供**精确的技术说明**、完整的命令和即用型自动化脚本，以将您的硬件发挥到极致。

---

## 💡 项目理念和透明度

我曾尝试过过时的指南、笨重的模拟器和自动安装整个 Linux 发行版 (PRoot) 的脚本，这些脚本最终会在您不知情的情况下使操作系统过载。本指南与众不同：**它是 100% Termux 原生的**，**不**使用盲目的自动化脚本。

这里没有中间层。我们使用纯净的 Termux 生态系统来实现设备硬件的真实性能。每一步都经过精心设计，以便您确切了解正在安装和配置的内容。

无论您是使用 **HTML、CSS 和 JS** 布局 Web 界面，在 **Godot Engine** 中编写机制，使用 **n8n** 自动化工作流程，还是在 **AI** 的帮助下进行编程，以原生方式了解您的环境将赋予您绝对的控制权，消除延迟并确保您的工作站快速且稳定。

---

## 🖼️ 环境预览

完成设置并应用 Systemic Flow 定制后，您的工作站将如下所示：

| XFCE 桌面 (优化与现代) | 代码编辑器 (Code OSS) |
| :---: | :---: |
| ![XFCE Moderno](./img/xfce-modern-desktop.png) | ![VS Code](./img/vscode-bienvenida.png) |

| Godot 游戏引擎 | OpenCode AI 助手 |
| :---: | :---: |
| ![Godot](./img/godot-project-manager.png) | ![OpenCode](./img/opencode-asistente.png) |

| n8n 自动化 | 网页浏览 (Firefox) |
| :---: | :---: |
| ![n8n](./img/n8n-dashboard.png) | ![Firefox](./img/firefox-navegacion.png) |

---

## 📍 目录

1. [⚡ 混合加速架构 (VirGL + Vulkan + ANGLE)](#-混合加速架构-virgl--vulkan--angle)
2. [📋 桌面环境和显示服务器](#-桌面环境和显示服务器)
3. [🚀 先决条件：准备 Termux](#-先决条件准备-termux)
4. [🛠️ 分步安装指南 (手动)](#️-分步安装指南-手动)
   * [阶段 1：基础系统准备](#阶段-1基础系统准备)
   * [阶段 2：存储库、实用程序和加速层 (VirGL)](#阶段-2存储库实用程序和加速层-virgl)
   * [阶段 3：人工智能助手 (Ollama + OpenCode + Gemini API)](#阶段-3人工智能助手-ollama--opencode--gemini-api)
   * [阶段 4：n8n 部署和智能清理](#阶段-4n8n-部署和智能清理)
   * [阶段 5：XFCE 安装、显示服务器和工具](#阶段-5xfce-安装显示服务器和工具)
   * [阶段 6：防止后台进程被杀死的解决方案 (Android 12+)](#阶段-6防止后台进程被杀死的解决方案-android-12)
   * [阶段 7：启动配置 (VNC 的 `xstartup`)](#阶段-7启动配置-vnc-的-xstartup)
   * [阶段 8：视觉和美学定制 (Systemic Flow)](#阶段-8视觉和美学定制-systemic-flow)
   * [阶段 9：在启动器中启用 GPU (可选)](#阶段-9在启动器中启用-gpu-可选)
5. [🕹️ 自动化脚本 (`up`, `on`, `vnc-on`, `off`)](#️-自动化脚本-up-on-vnc-on-off)
6. [📜 许可证](#-许可证)

---

## ⚡ 混合加速架构 (VirGL + Vulkan + ANGLE)

与大多数局限于骁龙处理器 (Adreno) 的指南不同，此设置通过原生翻译链在**具有 Mali GPU 的设备（联发科、Exynos 等）上实现了真正的 GPU 硬件加速**。

Systemic Flow 性能背后的真正秘密在于我们的**按需架构**：
1. 我们通过软件 (CPU) 渲染桌面环境，以确保绝对稳定性，完全消除黑屏和崩溃（`BadMatch` 错误）。
2. 我们**仅**对要求苛刻的应用程序（如 Godot Engine 或 Firefox）以隔离的方式将 3D 处理委托给 GPU。

使用这种方法，性能飙升，绝对流畅，并且您的设备即使在繁重的工作负载下也能保持凉爽（~36 °C）。

---

## 📋 桌面环境和显示服务器

为了确保您的设备发挥最佳性能而不会吞噬 RAM，我们优化了以下选项：

### 1. 桌面：XFCE4
* **XFCE:** 轻量、极其快速和极简主义。它是本指南的标准。稍后，我们将向您展示如何自定义它，使其看起来与更重的环境一样现代和专业，但只占用很少的资源。

### 2. 选择显示服务器
* **原生 X11 (`termux-x11-nightly`):** 通过其专用应用程序 (`DISPLAY=:0`) 直接在设备屏幕上渲染，提供尽可能低的延迟和最佳的触摸集成。这是首选推荐选项。
* **VNC 服务器 (TigerVNC):** 经典且通用。我们将其保留为需要在大型显示器上工作且没有投影仪、HDMI 端口或 DeX 模式的用户的绝佳选择。它允许您通过局域网连接到外部显示器上的 `127.0.0.1:5901`。

*我们将安装这两个选项，以便您拥有完全的灵活性！*

---

## 🚀 先决条件：准备 Termux

为避免与繁重的通用软件包不兼容，我们建议下载适合您架构的 APK（最好是官方 GitHub Releases 中的 **`arm64-v8a`**，而不是 F-Droid，从而将基础大小减少到 ~30 MB）。

---

## 🛠️ 分步安装指南 (手动)

### 阶段 1：基础系统准备
我们授予存储权限，更新镜像，并使系统包保持最新：

```bash
termux-setup-storage
termux-change-repo
apt list --upgradable
apt full-upgrade -y
```

### 阶段 2：存储库、实用程序和加速层 (VirGL)
```bash
pkg install tur-repo x11-repo -y
pkg install git unzip wget curl ripgrep procps figlet neofetch -y
pkg install virglrenderer virglrenderer-android angle-android vulkan-loader-generic openssl -y

# 1. 移除冲突的软件渲染器
pkg remove '*icd-swrast' 2>/dev/null

# 2. 安装 Mesa 的 Vulkan 包装器
wget '[https://github.com/ar37-rs/virgl-angle/releases/download/latest/mesa-vulkan-icd-wrapper_25.0.0-1_aarch64.deb](https://github.com/ar37-rs/virgl-angle/releases/download/latest/mesa-vulkan-icd-wrapper_25.0.0-1_aarch64.deb)'
dpkg -i mesa-vulkan-icd-wrapper_25.0.0-1_aarch64.deb
rm mesa-vulkan-icd-wrapper_25.0.0-1_aarch64.deb

# 3. 安装 vgl 工具
wget '[https://github.com/ar37-rs/virgl-angle/raw/refs/heads/main/vgl](https://github.com/ar37-rs/virgl-angle/raw/refs/heads/main/vgl)'
chmod +x vgl && mv vgl $PREFIX/bin/
```

### 阶段 3：人工智能助手 (Ollama + OpenCode + Gemini API)
1. **Ollama 安装:**
   ```bash
   pkg install ollama -y
   ollama serve &
   ```
   *(在另一个 Termux 选项卡中)*:
   ```bash
   ollama pull qwen2.5-coder:1.5b
   ```

2. **OpenCode 二进制文件:**
```bash
LATEST_OPCODE=$(curl -s "[https://api.github.com/repos/Haris131/opencode-termux/releases/latest](https://api.github.com/repos/Haris131/opencode-termux/releases/latest)" | grep "browser_download_url" | grep "aarch64.zip" | cut -d '"' -f 4)
curl -L -o opencode.zip "$LATEST_OPCODE"
unzip opencode.zip
chmod +x opencode
mv opencode $PREFIX/bin/
rm opencode.zip
```

3. **环境变量配置 (`~/.bashrc`):**
  ```bash
cat << 'EOF' >> ~/.bashrc
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=C.UTF-8

alias gpu='env -u LIBGL_ALWAYS_SOFTWARE GALLIUM_DRIVER=virpipe MESA_GL_VERSION_OVERRIDE=4.1COMPAT MESA_GLSL_VERSION_OVERRIDE=410'

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

### 阶段 4：n8n 部署和智能清理
```bash
curl -o termux-n8n-native.sh '[https://raw.githubusercontent.com/Yerensoncasares/termux-dev-station/main/termux-n8n-native.sh](https://raw.githubusercontent.com/Yerensoncasares/termux-dev-station/main/termux-n8n-native.sh)'
chmod +x termux-n8n-native.sh
bash termux-n8n-native.sh

npm cache clean --force && pip cache purge
pkg clean && apt autoremove --purge
rm -rf $PREFIX/tmp/*
```

### 阶段 5：XFCE 安装、显示服务器和工具
```bash
pkg install xfce4 xfce4-goodies thunar htop -y 
pkg install tigervnc android-tools termux-x11-nightly -y
pkg install pulseaudio firefox godot python nodejs code-oss -y
```

### 阶段 6：防止后台进程被杀死的解决方案 (Android 12+)
```bash
adb pair 192.168.xxx.xxx:xxxxx xxxxxx
adb connect 192.168.xxx.xxx:xxxxx
adb shell "/system/bin/device_config set_sync_disabled_for_tests persistent"
adb shell "/system/bin/device_config put activity_manager max_phantom_processes 2147483647"
adb shell settings put global settings_enable_monitor_phantom_procs false
```

### 阶段 7：启动配置 (VNC 的 `xstartup`)
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

### 阶段 8：视觉和美学定制 (Systemic Flow)
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

### 阶段 9：在启动器中启用 GPU (可选)
对于重型应用程序，您可以在快捷方式的 **Command** 字段前添加 GPU 变量：

`env -u LIBGL_ALWAYS_SOFTWARE GALLIUM_DRIVER=virpipe MESA_GL_VERSION_OVERRIDE=4.1COMPAT MESA_GLSL_VERSION_OVERRIDE=410`

---

## 🕹️ 自动化脚本 (`up`, `on`, `vnc-on`, `off`)

### 1. 系统更新脚本 (`up`)
```bash
cat << 'EOF' > $PREFIX/bin/up
#!/data/data/com.termux/files/usr/bin/bash
apt list --upgradable
yes | pkg update && pkg upgrade -y
EOF
chmod +x $PREFIX/bin/up
```

### 2. 原生 X11 图形启动脚本 (`on`)
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

[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources

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

### 3. VNC 启动脚本 (`vnc-on`)
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

pulseaudio --start --exit-idle-time=-1 2>/dev/null
vncserver :1 -geometry 1280x720 -depth 24 -localhost no
echo -e "\n[✓] VNC Server started."
EOF
chmod +x $PREFIX/bin/vnc-on
```

### 4. 干净的关机脚本 (`off`)
```bash
cat << 'EOF' > $PREFIX/bin/off
#!/data/data/com.termux/files/usr/bin/bash
termux-wake-unlock
export TMPDIR=/data/data/com.termux/files/usr/tmp

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
echo "[✓] Shutdown clean."
EOF
chmod +x $PREFIX/bin/off
```

---

## 📜 许可证
本项目在 **MIT** 许可证下分发。享受在 Android 上的全新便携式开发工作站吧！
