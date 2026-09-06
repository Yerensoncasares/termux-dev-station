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

欢迎！如果你曾经希望将 Android 设备（在 DeX 模式下、连接外部显示器或直接在平板/手机上）转变为真正的开发工作站，而无需 Root、无需沉重的模拟层、也无需复杂晦涩的脚本，那么你来对地方了。

本指南打破了“必须安装完整操作系统才能在手机上真正进行编程”的迷思。在这里，我们结合了**原生性能、轻量级编辑器和直接图形加速**，打造一个 100% 稳定的环境。

本指南融合了两者的精华：**平易近人、通俗易懂且循序渐进的说明**，让任何用户都能理解设备上发生的一切；同时具备**精准的技术细节**、完整的命令以及现成的自动化脚本，旨在榨干硬件的最大性能。

---

## 💡 项目理念与透明度

我曾走过尝试过时指南、沉重模拟器和自动脚本的弯路——那些脚本会安装整个 Linux 发行版 (PRoot)，最终在不知不觉中让系统不堪重负。本指南与众不同：**它 100% 原生运行于 Termux**，并且**绝不**盲目使用自动化。

这里没有中间层。我们使用纯粹的 Termux 生态系统来实现设备硬件的真实性能。每一步的设计都旨在让你准确明白正在安装和配置的内容。

无论你是使用 **HTML、CSS 和 JS** 设计 Web 界面、在 **Godot Engine** 中编写游戏逻辑、使用 **Node-RED** 自动化工作流，还是在 **AI** 辅助下编写代码，从原生层面上了解你的环境将赋予你绝对的控制权，消除延迟并确保你的工作站敏捷且稳定。

---

## 🖼️ 环境预览

完成安装过程并应用 Systemic Flow 定制后，你的工作站外观如下：

| XFCE 桌面 (优化与现代) | 代码编辑器 (Code OSS) |
| :---: | :---: |
| ![XFCE Moderno](./img/xfce-modern-desktop.png) | ![VS Code](./img/vscode-bienvenida.png) |

| Godot 游戏引擎 | OpenCode AI 助手 |
| :---: | :---: |
| ![Godot](./img/godot-project-manager.png) | ![OpenCode](./img/opencode-asistente.png) |

| Node-RED 自动化 | Web 浏览 (Firefox) |
| :---: | :---: |
| ![Node-RED](./img/nodered-dashboard.png) | ![Firefox](./img/firefox-navegacion.png) |

---

## 📍 目录索引

1. [⚡ 混合加速架构 (VirGL + Vulkan + ANGLE)](#-混合加速架构-virgl--vulkan--angle)
2. [📋 环境与图形服务器](#-环境与图形服务器)
3. [🚀 准备工作：准备 Termux](#-准备工作准备-termux)
4. [🛠️ 分步安装指南 (手动)](#️-分步安装指南-手动)
   * [阶段 1：基础系统准备](#阶段-1基础系统准备)
   * [阶段 2：软件源、系统工具与图形加速层 (VirGL)](#阶段-2软件源系统工具与图形加速层-virgl)
   * [阶段 3：人工智能助手 (Ollama + OpenCode + Gemini API)](#阶段-3人工智能助手-ollama--opencode--gemini-api)
   * [阶段 4：部署 Node-RED 与智能空间清理](#阶段-4部署-node-red-与智能空间清理)
   * [阶段 5：安装 XFCE 桌面、图形服务器及工具](#阶段-5安装-xfce-桌面图形服务器及工具)
   * [阶段 6：解决幽灵进程杀掉问题 (Android 12+)](#阶段-6解决幽灵进程杀掉问题-android-12)
   * [阶段 7：启动配置 (`xstartup` 用于 VNC)](#阶段-7启动配置-xstartup-用于-vnc)
   * [阶段 8：视觉美化与个性化 (Systemic Flow)](#阶段-8视觉美化与个性化-systemic-flow)
   * [阶段 9：在启动器中启用 GPU 加速 (可选)](#阶段-9在启动器中启用-gpu-加速-可选)
5. [🕹️ 自动化脚本 (`up`, `on`, `vnc-on`, `off`)](#️-自动化脚本-up-on-vnc-on-off)
6. [📜 许可证](#-许可证)
   
---
   
## ⚡ 混合加速架构 (VirGL + Vulkan + ANGLE)

与绝大多数仅限于 Snapdragon (Adreno) 处理器的指南不同，此配置通过原生翻译链在**搭载 Mali GPU 的处理器** (MediaTek、Exynos 等) 上实现了**真实 GPU 硬件图形加速**。

Systemic Flow 性能背后的真正秘密在于我们的**按需架构**：
1. 我们通过软件 (CPU) 渲染桌面环境以确保绝对稳定性，从根本上杜绝黑屏和崩溃 (`BadMatch` 错误)。
2. 我们**仅**为需要 3D 处理的应用 (如 Godot Engine 或 Firefox) 独立调用 GPU 进行渲染。

通过这种方法，性能大幅提升，整体流畅度满格，即使在重度任务下，你的设备也能保持凉爽 (~36 °C)。

---

## 📋 环境与图形服务器

为了确保你的设备在不吃满内存的前提下发挥最大性能，我们优化了以下选项：

### 1. 桌面环境：XFCE4
* **XFCE：** 轻量、极速且极简。这是本指南的标准配置。稍后我们将展示如何通过面板和菜单进行个性化定制，使其看起来像更重型的桌面环境一样现代和专业，但仅消耗一小部分资源。

### 2. 选择图形服务器 (Display Server)
* **原生 X11 (`termux-x11-nightly`)：** 通过其专用 App 直接在设备屏幕上进行渲染 (`DISPLAY=:0`)，提供最低的延迟和最佳的触控集成。这是首选推荐方案。
* **VNC 服务器 (TigerVNC)：** 经典且通用。我们将其保留为一个绝佳的备选方案，适合需要在大型屏幕上工作且没有投影仪、HDMI 接口或 DeX 模式的用户。它允许你通过局域网在外部显示器上的任何 VNC 查看器中连接到 `127.0.0.1:5901`。

*我们将同时安装这两种方案，以便你拥有充分的灵活性！*

---

## 🚀 准备工作：准备 Termux

为避免与笨重的通用软件包发生不兼容，建议从 GitHub 官方 Releases（而非 F-Droid）下载适合你架构的 Termux APK（优先选择 **`arm64-v8a`**，可将基础体积缩小至 ~30 MB）。

---

## 🛠️ 分步安装指南 (手动)

### 阶段 1：基础系统准备
授予存储权限，更新镜像源（可选，如果你想更换服务器），并更新系统软件包：

```bash
termux-setup-storage
termux-change-repo  # (可选：如果想更换软件源镜像请执行此命令)
apt list --upgradable
apt full-upgrade -y
```

### 阶段 2：软件源、系统工具与图形加速层 (VirGL)
添加必需的社区软件源 (`tur-repo`, `x11-repo`)、网络工具、用于进程管理的系统必需工具 (`procps` 用于 `killall` 和 `pkill`)、终端美化工具 (`figlet`, `neofetch`)，并准备通过 ANGLE 和 Vulkan 针对 Mali 处理器的高级图形加速层：

```bash
pkg install tur-repo x11-repo -y
pkg install git unzip wget curl ripgrep procps figlet neofetch -y
pkg install virglrenderer virglrenderer-android angle-android vulkan-loader-generic openssl -y

# 1. 删除可能存在的冲突的软件渲染器
pkg remove '*icd-swrast' 2>/dev/null

# 2. 安装 Mesa 的 Vulkan Wrapper
wget 'https://github.com/ar37-rs/virgl-angle/releases/download/latest/mesa-vulkan-icd-wrapper_25.0.0-1_aarch64.deb'
dpkg -i mesa-vulkan-icd-wrapper_25.0.0-1_aarch64.deb
rm mesa-vulkan-icd-wrapper_25.0.0-1_aarch64.deb

# 3. 安装 vgl 工具以管理图形服务器启动
wget 'https://github.com/ar37-rs/virgl-angle/raw/refs/heads/main/vgl'
chmod +x vgl && mv vgl $PREFIX/bin/
```

### 阶段 3：人工智能助手 (Ollama + OpenCode + Gemini API)
我们将保留本地 AI 工具，并向你推荐最佳的云端标准：

1. **安装 Ollama 及本地模型：**
   ```bash
   pkg install ollama -y
   ollama serve &
   ```
   *(在另一个 Termux 标签页中)*:
   ```bash
   ollama pull qwen2.5-coder:1.5b
   ```

2. **OpenCode 二进制文件：**
```bash
# 1. 获取干净的下载 URL
LATEST_OPCODE=$(curl -s "https://api.github.com/repos/Haris131/opencode-termux/releases/latest" | grep "browser_download_url" | grep "aarch64.zip" | cut -d '"' -f 4)

# 2. 下载、授权并将二进制文件安装到系统路径
curl -L -o opencode.zip "$LATEST_OPCODE"
unzip opencode.zip
chmod +x opencode
mv opencode $PREFIX/bin/

# 3. 清理残余的压缩包
rm opencode.zip
```

3. **环境变量配置 (`~/.bashrc`)：**
   你可以按以下结构配置 `~/.bashrc` 文件（包含 `figlet` 和 `neofetch` 的欢迎界面、环境变量以及本地/云端 AI 支持）：
  ```bash
cat << 'EOF' >> ~/.bashrc
# 语言/区域设置 (中文 UTF-8)
export LANG=zh_CN.UTF-8
export LANGUAGE=zh_CN.UTF-8
export LC_ALL=C.UTF-8

# 用于在重度应用中按需启用 GPU 的别名 (例如: gpu godot4)
alias gpu='env -u LIBGL_ALWAYS_SOFTWARE GALLIUM_DRIVER=virpipe MESA_GL_VERSION_OVERRIDE=4.1COMPAT MESA_GLSL_VERSION_OVERRIDE=410'

# AI 环境变量 (Ollama, Gemini, OpenRouter)
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

### 阶段 4：部署 Node-RED 与智能空间清理
安装轻量级事件驱动自动化平台 (Node-RED) 并执行深度清理以释放空间：

```bash
curl -o termux-nodered-native.sh 'https://raw.githubusercontent.com/Yerensoncasares/termux-dev-station/main/termux-nodered-native.sh'
chmod +x termux-nodered-native.sh
bash termux-nodered-native.sh

# 存储空间清理流程
npm cache clean --force && pip cache purge 2>/dev/null
pkg clean && apt autoremove --purge -y
rm -rf $PREFIX/tmp/*
```

### 阶段 5：安装 XFCE 桌面、图形服务器及工具
安装 XFCE4 图形环境及其核心组件、显示服务器 (`TigerVNC` 和原生 `termux-x11-nightly` 包)，以及音频系统和原生开发工具：

```bash
# 超轻量 XFCE 环境与文件管理器
pkg install xfce4 xfce4-goodies thunar htop xfce4-places-plugin -y 

# 图形服务器与 ADB 工具
pkg install tigervnc android-tools -y
pkg install termux-x11-nightly -y  # 高流畅度原生 X11 服务器

# 多媒体、开发与原生代码编辑器
pkg install pulseaudio firefox godot python nodejs code-oss -y
```

### 阶段 6：解决幽灵进程杀掉问题 (Android 12+)
为了防止 Android 在切换应用时杀掉后台进程，请在开发者选项中使用无线 ADB：

```bash
adb pair 192.168.xxx.xxx:xxxxx xxxxxx
adb connect 192.168.xxx.xxx:xxxxx
adb shell "/system/bin/device_config set_sync_disabled_for_tests persistent"
adb shell "/system/bin/device_config put activity_manager max_phantom_processes 2147483647"
adb shell settings put global settings_enable_monitor_phantom_procs false
```

### 阶段 7：启动配置 (`xstartup` 用于 VNC)
如果你选择使用 VNC，请配置启动文件 `~/.vnc/xstartup`：

1. 初始化 VNC 服务器以生成文件结构：
   ```bash
   vncserver && vncserver -kill :1
   ```
2. 编辑 `~/.vnc/xstartup`：
```bash
cat << 'EOF' > ~/.vnc/xstartup
#!/data/data/com.termux/files/usr/bin/sh

localhost="no"

# 强制为 XFCE 环境使用软件渲染 (最高稳定性)
export LIBGL_ALWAYS_SOFTWARE=1
export GALLIUM_DRIVER=llvmpipe

xset s off &
xset -dpms &

# 语言与临时变量
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

### 阶段 8：视觉美化与个性化 (Systemic Flow)
为了让你的环境看起来现代且极简，我们将安装 UI 主题、交互式命令行和图标。

运行以下代码块安装 `starship`（采用 Tokyo Night 预设）、`lsd`，并直接从我们的官方 Release 下载完整的 Systemic Flow 视觉资源包（字体、GTK 主题和光标）：

```bash
# 1. 安装官方主题与终端实用工具
pkg install arc-gtk-theme papirus-icon-theme starship lsd fontconfig-utils -y

# 2. 配置 Starship 提示符 (Tokyo Night 预设)
mkdir -p ~/.config
starship preset tokyo-night -o ~/.config/starship.toml

# 3. 清理并安装视觉资源包
rm -rf ~/.fonts ~/.themes ~/.icons ~/assets.zip
curl -L -o ~/assets.zip "https://github.com/Yerensoncasares/termux-dev-station/releases/download/V1.0/assets.zip"
unzip -o ~/assets.zip -d ~/
rm ~/assets.zip
fc-cache -fv

# 4. 干净地注入别名和 Starship 到 ~/.bashrc
grep -q 'starship init bash' ~/.bashrc || echo 'eval "$(starship init bash)"' >> ~/.bashrc
grep -q 'alias ls="lsd"' ~/.bashrc || echo 'alias ls="lsd"' >> ~/.bashrc

# 5. 在当前会话中应用更改
source ~/.bashrc
```

 ---
 
 ### 阶段 9：在启动器中启用 GPU 加速 (可选)
我们的架构在软件层面渲染 UI 以获得最高稳定性，但你可以为重型应用（如 **Code-OSS**、**Godot Engine** 或 **Firefox**）按需开启 GPU 加速，无需使用终端。

要在 Whisker 菜单或底部面板中直接带硬件加速打开它们：

1. 右键点击 Whisker 菜单或面板中的应用，选择 **编辑应用程序**（或 *属性*）。
2. 在 **命令** 框中，在程序路径前加上以下 GPU 前缀：

`env -u LIBGL_ALWAYS_SOFTWARE GALLIUM_DRIVER=virpipe MESA_GL_VERSION_OVERRIDE=4.1COMPAT MESA_GLSL_VERSION_OVERRIDE=410`

**完整命令行示例：**
* **Code-OSS：** `env -u LIBGL_ALWAYS_SOFTWARE GALLIUM_DRIVER=virpipe MESA_GL_VERSION_OVERRIDE=4.1COMPAT MESA_GLSL_VERSION_OVERRIDE=410 /data/data/com.termux/files/usr/bin/code-oss %F`
* **Godot Engine：** `env -u LIBGL_ALWAYS_SOFTWARE GALLIUM_DRIVER=virpipe MESA_GL_VERSION_OVERRIDE=4.1COMPAT MESA_GLSL_VERSION_OVERRIDE=410 godot %u`

> **注意：** 没有必要（也不建议）对文件管理器或任务管理器等轻量级系统工具应用此调整。
>

---

## 🕹️ 自动化脚本 (`up`, `on`, `vnc-on`, `off`)

为了避免每次开启或关闭工作站时都需要输入长命令，你可以在工作目录（或 `~/`）中创建这些脚本。请务必使用 `chmod +x <脚本名>.sh` 赋予它们执行权限。

### 1. 系统更新脚本 (`up`)
无人值守更新软件包列表和整个系统。
```bash
cat << 'EOF' > $PREFIX/bin/up
#!/data/data/com.termux/files/usr/bin/bash
apt list --upgradable
yes | pkg update && pkg upgrade -y
EOF
chmod +x $PREFIX/bin/up
```

### 2. 原生 X11 启动脚本 (`on`)
启动 WakeLock 以防止系统休眠，清理旧 Socket，通过 `vgl` 启动 ANGLE/Vulkan 服务器，启动 Termux-X11 应用，配置 PulseAudio 音频，并使用软件渲染干净地启动 XFCE 以获得最大稳定性。
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

# 在 Vulkan 模式下启动图形服务器
vgl angle=vulkan &
sleep 2

# 启动 X11 与 Android 应用
export DISPLAY=:0
termux-x11 :0 -ac &
sleep 2
am start --user 0 -n com.termux.x11/.MainActivity >/dev/null 2>&1

# 音频配置与安全环境
pulseaudio --start --exit-idle-time=-1 2>/dev/null
export LANG=zh_CN.UTF-8
export LIBGL_ALWAYS_SOFTWARE=1
export GALLIUM_DRIVER=llvmpipe

[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources

# 分别运行 XFCE 组件以避免启动循环
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
启动 VirGL 图形服务器、PulseAudio 音频服务以及运行在 `127.0.0.1:5901` 的 TigerVNC 服务器。
```bash
cat << 'EOF' > $PREFIX/bin/vnc-on
#!/data/data/com.termux/files/usr/bin/bash

termux-wake-lock
export TMPDIR=/data/data/com.termux/files/usr/tmp

# 1. 启动前的彻底清理 (避免出现 "A VNC server is already running as :1" 错误)
vncserver -kill :1 >/dev/null 2>&1
rm -rf "$TMPDIR"/.X11-unix/X1 "$TMPDIR"/dbus-* "$TMPDIR"/pulse-* "$HOME"/.vnc/*.pid "$HOME"/.vnc/*.log

# 2. 在 Vulkan 模式下启动图形服务器并深度清理 (与 X11 保持一致)
vgl q 2>/dev/null
pkill -9 -f virgl 2>/dev/null
vgl angle=vulkan &
sleep 2
sync

# 3. 音频
pulseaudio --start --exit-idle-time=-1 2>/dev/null

# 4. 启动 VNC
vncserver :1 -geometry 1280x720 -depth 24 -localhost no
echo -e "\n[✓] VNC 服务器已启动。请在查看器中连接：127.0.0.1:5901"
renice -n -10 -p $(pgrep -f vncserver) 2>/dev/null
EOF
chmod +x $PREFIX/bin/vnc-on
```

### 4. 安全关闭脚本 (`off`)
停止图形守护进程、X11/VNC/VirGL 服务器，释放 PulseAudio，并清理临时 Socket。
```bash
cat << 'EOF' > $PREFIX/bin/off
#!/data/data/com.termux/files/usr/bin/bash

termux-wake-unlock
export TMPDIR=/data/data/com.termux/files/usr/tmp

echo "正在关闭开发工作站..."

# 1. 强制杀死 XFCE 环境
killall -9 xfce4-session startxfce4 xfwm4 xfdesktop xfce4-panel 2>/dev/null

# 2. 停止图形服务器 (VNC, X11 和 Vulkan)
vncserver -kill :1 >/dev/null 2>&1
pkill -9 Xvnc 2>/dev/null
am force-stop com.termux.x11 2>/dev/null
pkill -9 -f termux-x11 2>/dev/null
vgl q 2>/dev/null
pkill -9 -f virgl 2>/dev/null

# 3. 停止 D-Bus 与音频
killall -9 dbus-daemon 2>/dev/null
pulseaudio --kill 2>/dev/null

# 4. 深度清理临时文件与积累的垃圾
rm -rf "$TMPDIR"/.X11-unix/X* "$TMPDIR"/dbus-* "$TMPDIR"/pulse-* 
rm -rf "$HOME"/.vnc/*.pid "$HOME"/.vnc/*.log "$HOME"/.cache/sessions/*

echo "[✓] 已全部关闭并清理干净。内存已释放。"
EOF
chmod +x $PREFIX/bin/off
```

> **注意：** 要手动创建并启用其中任何脚本，你可以使用 `nano <名称>.sh` 创建它们，粘贴内容，保存后运行：
> ```bash
> chmod +x 名称.sh
> ```

---

## 📜 许可证
本项目基于 **MIT** 许可证开源发布。尽情享受你在 Android 上的全新便携式开发工作站吧！
