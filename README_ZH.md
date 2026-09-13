# 📱 Termux-Dev-Station: Android 原生终极开发工作站
**Systemic Flow 项目**

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

欢迎！如果你曾想过将你的 Android 设备（在 DeX 模式下、连接到外接显示器或直接在你的平板/手机上）转变为一台真正的开发电脑，而无需 Root 权限、沉重的仿真层，也不需要晦涩的神奇脚本，那么你来对地方了。

本指南打破了必须安装一整个操作系统才能在手机上进行真正编程的误区。在这里，我们结合了**原生性能、轻量级编辑器与直接图形硬件加速**，构建起一个 100% 稳定的环境。

本指南兼顾了两者的长处：**通俗友好、循序渐进的步骤解析**，让任何用户都能理解设备上正在发生的事情；同时具备**严谨准确的技术细节**、完整的命令以及现成的自动化脚本，助你榨干硬件的每一分潜能。

---

## 💡 项目理念与透明度

我曾经历过测试各种过时的指南、笨重的模拟器以及自动安装整个 Linux 发行版（PRoot）并最终在不知不觉中拖垮操作系统的自动脚本的过程。本指南截然不同：**它是 100% Termux 原生的**，并且**绝不**采用盲目的自动化操作。

这里没有任何中间层。我们使用纯正的 Termux 生态系统来实现你设备真实的硬件性能。每一个步骤都经过精心设计，让你确切了解正在安装和配置的内容。

无论你是使用 **HTML、CSS 和 JS** 排版网页界面，在 **Godot Engine** 中编写游戏机制，利用 **Node-RED** 自动化工作流，还是在 **AI** 的协助下进行编程，从原生层面了解你的环境都将赋予你绝对的掌控力，消除延迟并确保你的工作站始终敏捷稳定。

---

## 🖼️ 环境预览

在完成整个流程并应用 Systemic Flow 定制后，你的工作站外观如下所示：

| XFCE 桌面（优化且现代） | 代码编辑器（Code OSS） |
| :---: | :---: |
| ![现代 XFCE](./img/xfce-modern-desktop.png) | ![VS Code](./img/vscode-bienvenida.png) |

| Godot 游戏引擎 | OpenCode AI 助手 |
| :---: | :---: |
| ![Godot](./img/godot-project-manager.png) | ![OpenCode](./img/opencode-asistente.png) |

| Node-RED 自动化 | 网页浏览（Firefox） |
| :---: | :---: |
| ![Node-RED](./img/nodered-dashboard.png) | ![Firefox](./img/firefox-navegacion.png) |

---

## 📍 内容目录

1. [⚡ 混合加速架构（VirGL + Vulkan + ANGLE）](#-混合加速架构virgl--vulkan--angle)
2. [📋 环境与图形显示服务器](#-环境与图形显示服务器)
3. [🚀 准备步骤：配置 Termux](#-准备步骤配置-termux)
4. [🛠️ 逐步安装指南（手动）](#️-逐步安装指南手动)
   * [阶段 1：基础系统准备](#阶段-1基础系统准备)
   * [阶段 2：软件源、系统工具与图形加速层（VirGL）](#阶段-2软件源系统工具与图形加速层virgl)
   * [阶段 3：人工智能助手（Ollama + OpenCode + Gemini API）](#阶段-3人工智能助手ollama--opencode--gemini-api)
   * [阶段 4：部署 Node-RED 与智能空间清理](#阶段-4部署-node-red-与智能空间清理)
   * [阶段 5：安装 XFCE 桌面、图形服务器及开发工具](#阶段-5安装-xfce-桌面图形服务器及开发工具)
   * [阶段 6：解决幽灵进程查杀问题（Android 12+）](#阶段-6解决幽灵进程查杀问题android-12)
   * [阶段 7：启动配置（用于 VNC 的 `xstartup`）](#阶段-7启动配置用于-vnc-的-xstartup)
   * [阶段 8：视觉美化与个性化定制（Systemic Flow）](#阶段-8视觉美化与个性化定制systemic-flow)
   * [阶段 9：在启动项中启用 GPU 加速（可选）](#阶段-9在启动项中启用-gpu-加速可选)
5. [🕹️ 自动化脚本（`up`、`on`、`vnc-on`、`off`）](#️-自动化脚本up-on-vnc-on-off)
6. [📜 许可证](#-许可证)
   
---
   
## ⚡ 混合加速架构（VirGL + Vulkan + ANGLE）

与大多数仅限于骁龙（Adreno）处理器的指南不同，该配置通过原生转译链，在 **Mali GPU 处理器**（联发科 MediaTek、三星 Exynos 等）上实现了**真正的 GPU 硬件图形加速**。

Systemic Flow 高性能的真正秘诀在于我们的**按需调用架构**：
1. 我们通过软件（CPU）渲染桌面环境，以确保绝对的稳定性，从根本上杜绝黑屏和死机（`BadMatch` 错误）。
2. 我们以隔离的方式**仅**向需要它的应用程序（如 Godot Engine 或 Firefox）分配 GPU 3D 处理。

通过这种方法，性能大幅提升，运行极其流畅，即使在高负载任务下你的设备也能保持凉爽（~36 °C）。

---

## 📋 环境与图形显示服务器

为了确保你的设备发挥最大潜能而不吞噬 RAM 内存，我们优化了各项选择：

### 1. 桌面环境：XFCE4
* **XFCE：** 轻量、极速且极简。它是本指南的标准选择。稍后我们将展示如何通过面板和菜单对其进行定制，使其外观像沉重的桌面环境一样现代专业，却仅消耗极小一部分系统资源。

### 2. 图形显示服务器（Display Server）的选择
* **原生 X11（`termux-x11-nightly`）：** 通过其专用应用直接在设备屏幕上渲染（`DISPLAY=:0`），提供尽可能最低的延迟和最佳的触控集成。这是主要推荐选项。
* **VNC 服务器（TigerVNC）：** 经典且通用。我们将其保留为绝佳备选方案，适合那些需要在外接大屏幕上工作而没有投影仪、HDMI 接口或 DeX 模式的用户。它允许你通过局域网在任何外部监视器的 VNC 查看器中连接到 `127.0.0.1:5901`。

*我们将同时安装这两个选项，以便你拥有完全的灵活性！*

---

## 🚀 准备步骤：配置 Termux

为避免庞大的通用软件包带来的不兼容性，我们建议下载适合你架构的 Termux APK（建议从 GitHub 官方 Releases 下载 **`arm64-v8a`** 版本，而非 F-Droid，从而将基础体积压缩至约 30 MB）。

---

## 🛠️ 逐步安装指南（手动）

### 阶段 1：基础系统准备
我们授予存储权限、更新镜像源（如果想要切换服务器则为可选项），并更新系统软件包：

```bash
termux-setup-storage
termux-change-repo  # （可选：如果你想更改软件源镜像，请执行此命令）
apt list --upgradable
apt full-upgrade -y
```

### 阶段 2：软件源、系统工具与图形加速层（VirGL）
我们添加核心社区源（`tur-repo`、`x11-repo`）、网络工具、进程管理必备的系统工具（用于 `killall` 和 `pkill` 的 `procps`）、终端美化组件（`figlet`、`neofetch`），并通过 ANGLE 和 Vulkan 为 Mali 处理器配置高级图形加速层：

```bash
pkg install tur-repo x11-repo -y
pkg install git unzip wget curl ripgrep procps figlet neofetch -y
pkg install virglrenderer virglrenderer-android angle-android vulkan-loader-generic openssl -y

# 1. 移除冲突的软件渲染器（如果存在）
pkg remove '*icd-swrast' 2>/dev/null

# 2. 安装适用于 Mesa 的 Vulkan 封装包
wget 'https://github.com/ar37-rs/virgl-angle/releases/download/latest/mesa-vulkan-icd-wrapper_25.0.0-1_aarch64.deb'
dpkg -i mesa-vulkan-icd-wrapper_25.0.0-1_aarch64.deb
rm mesa-vulkan-icd-wrapper_25.0.0-1_aarch64.deb

# 3. 安装用于管理图形服务器启动的 vgl 工具
wget 'https://github.com/ar37-rs/virgl-angle/raw/refs/heads/main/vgl'
chmod +x vgl && mv vgl $PREFIX/bin/
```

### 阶段 3：人工智能助手（Ollama + OpenCode + Gemini API）
我们将维护本地 AI 工具，并向你推荐最佳的云端标准：

1. **安装 Ollama 及本地模型：**
   ```bash
   pkg install ollama -y
   ollama serve &
   ```
   *（在另一个 Termux 标签页中执行）*：
   ```bash
   ollama pull qwen2.5-coder:1.5b
   ```

2. **OpenCode 二进制文件：**
```bash
# 1. 获取纯净的下载链接
LATEST_OPCODE=$(curl -s "https://api.github.com/repos/Haris131/opencode-termux/releases/latest" | grep "browser_download_url" | grep "aarch64.zip" | cut -d '"' -f 4)

# 2. 下载、赋予权限并安装二进制文件到系统路径
curl -L -o opencode.zip "$LATEST_OPCODE"
unzip opencode.zip
chmod +x opencode
mv opencode $PREFIX/bin/

# 3. 清理残留的压缩文件
rm opencode.zip
```

3. **环境变量配置（`~/.bashrc`）：**
   你可以使用以下结构配置你的 `~/.bashrc` 文件（包含 `figlet` 与 `neofetch` 的欢迎信息、环境变量以及本地/云端 AI 支持）：
   ```bash
cat << 'EOF' >> ~/.bashrc
# 语言 / 本地化配置（简体中文 UTF-8）
export LANG=zh_CN.UTF-8
export LANGUAGE=zh_CN.UTF-8
export LC_ALL=C.UTF-8

# 用于在大型应用中按需启用 GPU 的别名（例如：gpu godot4）
alias gpu='env -u LIBGL_ALWAYS_SOFTWARE GALLIUM_DRIVER=virpipe MESA_GL_VERSION_OVERRIDE=4.1COMPAT MESA_GLSL_VERSION_OVERRIDE=410'

# AI 环境变量（Ollama、Gemini、OpenRouter）
export OPENAI_API_KEY="ollama"
export OPENAI_API_BASE="http://localhost:11434/v1"
export GEMINI_API_KEY="你的-gemini-api-key"
export OPENROUTER_API_KEY="你的-openrouter-api-key"

clear
echo 'Systemic Flow Dev Station' | figlet 2>/dev/null || echo 'Termux Dev Station'
neofetch 2>/dev/null || true
EOF
source ~/.bashrc
   ```

### 阶段 4：部署 Node-RED 与智能空间清理
我们安装轻量级基于事件的自动化平台（Node-RED），并执行深度清理流程以释放存储空间：

```bash
curl -o termux-nodered-native.sh 'https://raw.githubusercontent.com/Yerensoncasares/termux-dev-station/main/termux-nodered-native.sh'
chmod +x termux-nodered-native.sh
bash termux-nodered-native.sh

# 存储清理例程
npm cache clean --force && pip cache purge 2>/dev/null
pkg clean && apt autoremove --purge -y
rm -rf $PREFIX/tmp/*
```

### 阶段 5：安装 XFCE 桌面、图形服务器及开发工具
我们安装 XFCE4 图形环境及其核心组件、显示服务器（`TigerVNC` 及原生 `termux-x11-nightly` 软件包），以及音频系统和原生开发工具：

```bash
# 超轻量级 XFCE 环境和基础应用（分组以优化效率）
pkg install xfce4 xfce4-goodies thunar htop xfce4-places-plugin picom geany qgit audacity mtpaint -y 

# 图形服务器与 ADB 工具
pkg install tigervnc android-tools -y
pkg install termux-x11-nightly -y  # 高流畅度原生 X11 服务器

# 音频与安装后配置
pkg install pulseaudio -y

# 原生开发应用程序
pkg install python nodejs code-oss -y
```

### 阶段 6：解决幽灵进程查杀问题（Android 12+）
为了防止 Android 在切换应用程序时杀死后台进程，请在“开发者选项”中使用无线 ADB：

```bash
adb pair 192.168.xxx.xxx:xxxxx xxxxxx
adb connect 192.168.xxx.xxx:xxxxx
adb shell "/system/bin/device_config set_sync_disabled_for_tests persistent"
adb shell "/system/bin/device_config put activity_manager max_phantom_processes 2147483647"
adb shell settings put global settings_enable_monitor_phantom_procs false
```

### 阶段 7：启动配置（用于 VNC 的 `xstartup`）
如果你决定使用 VNC，请配置你的启动文件 `~/.vnc/xstartup`：

1. 初始化 VNC 服务器以生成目录结构：
   ```bash
   vncserver && vncserver -kill :1
   ```
2. 编辑 `~/.vnc/xstartup`：
```bash
cat << 'EOF' > ~/.vnc/xstartup
#!/data/data/com.termux/files/usr/bin/sh

export localhost="no"

# 强制软件渲染并设置环境变量（与 vnc-on 保持同步）
export LIBGL_ALWAYS_SOFTWARE=1
export GALLIUM_DRIVER=llvmpipe
export DISPLAY=:1

xset s off &
xset -dpms &

# 本地化与临时变量
export LANG=zh_CN.UTF-8
export LANGUAGE=zh_CN.UTF-8
export LC_ALL=C.UTF-8
export TMPDIR=/data/data/com.termux/files/usr/tmp
export XDG_RUNTIME_DIR=${TMPDIR}

# 加载资源并启动 XFCE 会话
[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources
dbus-launch --exit-with-session startxfce4
EOF
chmod +x ~/.vnc/xstartup
```

---

### 阶段 8：视觉美化与个性化定制（Systemic Flow）
为了让你的环境呈现现代极简风格，我们将安装界面主题、交互式命令行以及图标。

运行以下命令块以安装 `starship`（采用 Tokyo Night 预设）、`lsd`，并直接从我们的官方发布页面下载完整的 Systemic Flow 资源包（*assets*，包括字体、GTK 主题和光标）：

```bash
# 1. 安装官方主题和终端工具
pkg install arc-gtk-theme papirus-icon-theme starship lsd fontconfig-utils -y

# 2. 配置 Starship 提示符（Tokyo Night 预设）
mkdir -p ~/.config
starship preset tokyo-night -o ~/.config/starship.toml

# 3. 清理并安装视觉资源包
rm -rf ~/.fonts ~/.themes ~/.icons ~/assets.zip
curl -L -o ~/assets.zip "https://github.com/Yerensoncasares/termux-dev-station/releases/download/V1.0/assets.zip"
unzip -o ~/assets.zip -d ~/
rm ~/assets.zip

# 4. 自动安装启动项与桌面配置
cp -r ~/.icons ~/.themes ~/.fonts ~/
fc-cache -fv
update-desktop-database ~/.local/share/applications/ 2>/dev/null || true

# 5. 在 ~/.bashrc 中干净地注入别名与 Starship
grep -q 'starship init bash' ~/.bashrc || echo 'eval "$(starship init bash)"' >> ~/.bashrc
grep -q 'alias ls="lsd"' ~/.bashrc || echo 'alias ls="lsd"' >> ~/.bashrc

# 6. 在当前会话中应用更改
source ~/.bashrc
```
 ---

### 阶段 9：在启动项中启用 GPU 加速（可选）
为了达到最佳稳定性，我们的架构默认通过软件渲染界面，但你可以为大型应用程序按需启用 GPU，而无需通过终端操作。

**重要提示：** 渲染方式因应用程序而异：

* **Code-OSS (VS Code)：** **软件渲染**（`LIBGL_ALWAYS_SOFTWARE=1`）以避免 Electron 界面花屏。不建议对 Code-OSS 使用 GPU 加速，因为其 Electron 架构在 CPU 渲染下表现更优。
* **Firefox 和 Godot Engine：** 在需要 3D 处理时使用**按需 GPU**（`GALLIUM_DRIVER=virpipe`）。这些应用程序经过优化，可根据需要随时在软件渲染与 GPU 之间切换。

若要直接从 Whisker 菜单或底部面板打开它们：

1. 右键单击 Whisker 菜单或面板中的应用程序，然后选择**编辑应用程序**（或“属性”）。
2. 在**命令**框中，使用对应的前缀：

* **Code-OSS：** `env LIBGL_ALWAYS_SOFTWARE=1 /data/data/com.termux/files/usr/bin/code-oss %F`
* **Firefox：** `env -u LIBGL_ALWAYS_SOFTWARE GALLIUM_DRIVER=virpipe MESA_GL_VERSION_OVERRIDE=4.1COMPAT MESA_GLSL_VERSION_OVERRIDE=410 firefox %u`
* **Godot Engine：** `env -u LIBGL_ALWAYS_SOFTWARE GALLIUM_DRIVER=virpipe MESA_GL_VERSION_OVERRIDE=4.1COMPAT MESA_GLSL_VERSION_OVERRIDE=410 godot %u`

> **注意：** 没有必要（也不建议）对文件管理器或任务管理器等轻量级系统工具应用 GPU 设置。XFCE 桌面环境始终采用软件渲染以确保稳定性。

---

## 🕹️ 自动化脚本（`up`、`on`、`vnc-on`、`off`）

为了避免每次启动或关闭工作站时都必须输入冗长复杂的命令，你可以在工作目录（或 `~/`）中创建这些脚本。请务必使用 `chmod +x <脚本名称>.sh` 为其赋予执行权限。

### 1. 系统更新脚本（`up`）
无人值守自动更新软件包列表与整个系统。
```bash
cat << 'EOF' > $PREFIX/bin/up
#!/data/data/com.termux/files/usr/bin/bash
apt list --upgradable
yes | pkg update && pkg upgrade -y
EOF
chmod +x $PREFIX/bin/up
```

### 2. 原生 X11 图形启动脚本（`on`）
启动 WakeLock 锁防止系统休眠，清理先前的套接字（sockets），通过 `vgl` 启动 ANGLE/Vulkan 服务器，启动 Termux-X11 应用，配置 PulseAudio 音频，并通过软件渲染干净地启动 XFCE 以获得最大稳定性。
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

# 以 Vulkan 模式启动图形服务器
vgl angle=vulkan &
sleep 2

# 启动 X11 及 Android 应用
export DISPLAY=:0
termux-x11 :0 -ac &
sleep 2
am start --user 0 -n com.termux.x11/.MainActivity >/dev/null 2>&1

# 音频与安全环境配置
pulseaudio --start --exit-idle-time=-1 2>/dev/null
export LANG=zh_CN.UTF-8
export LIBGL_ALWAYS_SOFTWARE=1
export GALLIUM_DRIVER=llvmpipe

[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources

# 纯净原生启动 XFCE
dbus-run-session -- startxfce4
EOF
chmod +x $PREFIX/bin/on
```
### 3. VNC 启动脚本（`vnc-on`）
启动 VirGL 图形服务器、PulseAudio 音频服务以及位于 `127.0.0.1:5901` 的 TigerVNC 服务器。
```bash
cat << 'EOF' > $PREFIX/bin/vnc-on
#!/data/data/com.termux/files/usr/bin/bash

termux-wake-lock
export TMPDIR=/data/data/com.termux/files/usr/tmp
export DISPLAY=:1

# 1. 事先进行深度清理（避免“A VNC server is already running as :1”错误）
vncserver -kill :1 >/dev/null 2>&1
rm -rf "$TMPDIR"/.X11-unix/X1 "$TMPDIR"/dbus-* "$TMPDIR"/pulse-* "$HOME"/.vnc/*.pid "$HOME"/.vnc/*.log

# 2. 以 Vulkan 模式启动图形服务器并配置环境
vgl q 2>/dev/null
pkill -9 -f virgl 2>/dev/null
vgl angle=vulkan &
sleep 2
sync

# 3. 音频
pulseaudio --start --exit-idle-time=-1 2>/dev/null

# 4. 启动保证同步的 VNC 服务器
vncserver :1 -geometry 1280x720 -depth 24 -localhost no
echo -e "\n[✓] VNC 服务器已启动。请使用查看器连接至：127.0.0.1:5901"
renice -n -10 -p $(pgrep -f vncserver) 2>/dev/null
EOF
chmod +x $PREFIX/bin/vnc-on
```

### 4. 彻底关闭脚本（off）
停止图形守护进程、X11/VNC/VirGL 服务器，释放 PulseAudio，并清理临时套接字。
```bash
cat << 'EOF' > $PREFIX/bin/off
#!/data/data/com.termux/files/usr/bin/bash

termux-wake-unlock
export TMPDIR=/data/data/com.termux/files/usr/tmp

echo "正在关闭开发工作站..."

# 1. 强制终止 XFCE 环境
killall -9 xfce4-session startxfce4 xfwm4 xfdesktop xfce4-panel 2>/dev/null

# 2. 停止图形服务器（VNC、X11 与 Vulkan）
vncserver -kill :1 >/dev/null 2>&1
pkill -9 Xvnc 2>/dev/null
am force-stop com.termux.x11 2>/dev/null
pkill -9 -f termux-x11 2>/dev/null
vgl q 2>/dev/null
pkill -9 -f virgl 2>/dev/null

# 3. 停止 D-Bus 与音频
killall -9 dbus-daemon 2>/dev/null
pulseaudio --kill 2>/dev/null

# 4. 深度清理临时文件与残留垃圾
rm -rf "$TMPDIR"/.X11-unix/X* "$TMPDIR"/dbus-* "$TMPDIR"/pulse-* 
rm -rf "$HOME"/.vnc/*.pid "$HOME"/.vnc/*.log "$HOME"/.cache/sessions/*

echo "[✓] 已完全关闭并清理完毕。内存已释放。"
EOF
chmod +x $PREFIX/bin/off
```

> **注意：** 若要手动创建并启用其中任何一个脚本，可以使用 `nano <脚本名>.sh` 创建文件，粘贴内容并保存，然后运行：
> ```bash
> chmod +x 脚本名.sh
> ```

---

## 📜 许可证
本项目采用 **MIT** 许可证分发。尽情享受你全新的 Android 便携式开发工作站吧！
