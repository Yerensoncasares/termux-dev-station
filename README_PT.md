# 📱 Termux-Dev-Station: A Estação de Desenvolvimento Nativa Definitiva no Android
**Um projeto de Systemic Flow**

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

🌐 **Idiomas disponíveis / Available Languages:**

[🇪🇸 Español](README.md) | [🇺🇸 English](README_EN.md) | [🇨🇳 中文](README_ZH.md) | [🇧🇷 Português](README_PT.md)

</div>

Bem-vindo! Se você já quis transformar seu dispositivo Android (no modo DeX, conectado a um monitor externo, ou diretamente no seu tablet/celular) em um verdadeiro computador de desenvolvimento sem precisar de root, emuladores pesados ou scripts complexos, você está no lugar certo.

Este guia quebra o mito de que é necessário instalar sistemas operacionais inteiros para programar de verdade em um celular. Aqui, combinamos **desempenho nativo, editores leves e aceleração gráfica de hardware direta** para construir um ambiente 100% estável.

Este guia une o melhor de dois mundos: **uma explicação amigável, acessível e passo a passo** para que qualquer usuário entenda o que está acontecendo em seu dispositivo, juntamente com **precisão técnica exata**, comandos completos e scripts de automação prontos para extrair o máximo do seu hardware.

---

## 💡 Filosofia do Projeto e Transparência

Eu já passei por guias desatualizados, emuladores pesados e scripts automatizados que instalam distribuições Linux inteiras (PRoot) e acabam sobrecarregando o sistema operacional sem você saber o que aconteceu. Este guia é diferente: **é 100% nativo do Termux** e **não** utiliza automações cegas.

Não há camadas intermediárias aqui. Utilizamos o ecossistema puro do Termux para alcançar o desempenho real do hardware do seu dispositivo. Cada passo foi projetado para que você entenda exatamente o que está sendo instalado e configurado.

Seja criando interfaces web com **HTML, CSS e JS**, programando mecânicas no **Godot Engine**, automatizando fluxos de trabalho com **n8n** ou programando com a ajuda de uma **IA**, entender o seu ambiente de forma nativa lhe dará controle absoluto, eliminando a latência e garantindo que sua estação de trabalho seja rápida e estável.

---

## 🖼️ Pré-visualização do Ambiente

É assim que sua estação de trabalho se parece quando o processo é concluído e a personalização do Systemic Flow é aplicada:

| Desktop XFCE (Otimizado e Moderno) | Editor de código (Code OSS) |
| :---: | :---: |
| ![XFCE Moderno](./img/xfce-modern-desktop.png) | ![VS Code](./img/vscode-bienvenida.png) |

| Motor de jogos Godot | Assistente de IA com OpenCode |
| :---: | :---: |
| ![Godot](./img/godot-project-manager.png) | ![OpenCode](./img/opencode-asistente.png) |

| Automação com n8n | Navegação Web (Firefox) |
| :---: | :---: |
| ![n8n](./img/n8n-dashboard.png) | ![Firefox](./img/firefox-navegacion.png) |

---

## 📍 Índice

1. [⚡ Arquitetura Híbrida de Aceleração (VirGL + Vulkan + ANGLE)](#-arquitetura-híbrida-de-aceleração-virgl--vulkan--angle)
2. [📋 Ambiente de Trabalho e Servidor de Exibição](#-ambiente-de-trabalho-e-servidor-de-exibição)
3. [🚀 Pré-requisito: Preparando o Termux](#-pré-requisito-preparando-o-termux)
4. [🛠️ Guia de Instalação Passo a Passo (Manual)](#️-guia-de-instalação-passo-a-passo-manual)
   * [Fase 1: Preparação do Sistema Base](#fase-1-preparação-do-sistema-base)
   * [Fase 2: Repositórios, Utilitários e Camada de Aceleração (VirGL)](#fase-2-repositórios-utilitários-e-camada-de-aceleração-virgl)
   * [Fase 3: Assistentes de Inteligência Artificial (Ollama + OpenCode + Gemini API)](#fase-3-assistentes-de-inteligência-artificial-ollama--opencode--gemini-api)
   * [Fase 4: Implantação do n8n e Limpeza Inteligente](#fase-4-implantação-do-n8n-e-limpeza-inteligente)
   * [Fase 5: Instalação do XFCE, Servidores de Exibição e Ferramentas](#fase-5-instalação-do-xfce-servidores-de-exibição-e-ferramentas)
   * [Fase 6: Solução contra o Encerramento de Processos (Android 12+)](#fase-6-solução-contra-o-encerramento-de-processos-android-12)
   * [Fase 7: Configuração de Inicialização (`xstartup` para VNC)](#fase-7-configuração-de-inicialização-xstartup-para-vnc)
   * [Fase 8: Personalização Visual e Estética (Systemic Flow)](#fase-8-personalização-visual-e-estética-systemic-flow)
   * [Fase 9: Habilitar GPU nos Lançadores (Opcional)](#fase-9-habilitar-gpu-nos-lançadores-opcional)
5. [🕹️ Scripts de Automação (`up`, `on`, `vnc-on`, `off`)](#️-scripts-de-automação-up-on-vnc-on-off)
6. [📜 Licença](#-licença)

---

## ⚡ Arquitetura Híbrida de Aceleração (VirGL + Vulkan + ANGLE)

Ao contrário da maioria dos guias limitados a processadores Snapdragon (Adreno), esta configuração permite a **aceleração real por hardware de GPU em dispositivos com GPUs Mali** (MediaTek, Exynos, etc.) por meio de uma cadeia de tradução nativa.

O verdadeiro segredo do desempenho do Systemic Flow está na nossa **arquitetura sob demanda**:
1. Renderizamos o ambiente de trabalho via software (CPU) para garantir estabilidade absoluta, eliminando telas pretas e travamentos (erros `BadMatch`).
2. Delegamos o processamento 3D para a GPU de forma isolada **apenas** para aplicativos exigentes (como Godot Engine ou Firefox).

Com este método, o desempenho dispara, a fluidez é total e o seu dispositivo permanece frio (~36 °C) mesmo sob cargas de trabalho pesadas.

---

## 📋 Ambiente de Trabalho e Servidor de Exibição

Para garantir que seu dispositivo tenha o melhor desempenho sem devorar a memória RAM, otimizamos as opções:

### 1. O Ambiente de Trabalho: XFCE4
* **XFCE:** Leve, incrivelmente rápido e minimalista. É o padrão para este guia. Mais tarde, mostraremos como personalizá-lo para que pareça tão moderno e profissional quanto ambientes mais pesados, mas usando uma fração dos recursos.

### 2. Escolhendo o Servidor de Exibição
* **X11 Nativo (`termux-x11-nightly`):** Renderização direta na tela do dispositivo por meio de seu aplicativo dedicado (`DISPLAY=:0`), oferecendo a menor latência possível e a melhor integração de toque. Esta é a opção principal recomendada.
* **Servidor VNC (TigerVNC):** Clássico e universal. Mantemos como uma excelente alternativa para usuários que precisam trabalhar em telas grandes e não têm projetor, porta HDMI ou modo DeX. Permite conectar a `127.0.0.1:5901` de qualquer visualizador VNC em um monitor externo via rede local.

*Instalaremos ambas as opções para que você tenha total flexibilidade!*

---

## 🚀 Pré-requisito: Preparando o Termux

Para evitar incompatibilidades com pacotes universais pesados, recomendamos baixar o APK apropriado para sua arquitetura (preferencialmente **`arm64-v8a`** do GitHub Releases oficial em vez do F-Droid, reduzindo o tamanho base para ~30 MB).

---

## 🛠️ Guia de Instalação Passo a Passo (Manual)

### Fase 1: Preparação do Sistema Base
Concedemos permissões de armazenamento, atualizamos os espelhos e mantemos os pacotes do sistema atualizados:

```bash
termux-setup-storage
termux-change-repo
apt list --upgradable
apt full-upgrade -y
```

### Fase 2: Repositórios, Utilitários e Camada de Aceleração (VirGL)
Adicionamos os repositórios da comunidade, ferramentas de sistema indispensáveis (`procps`, `figlet`, `neofetch`) e preparamos a camada de aceleração gráfica avançada usando ANGLE e Vulkan:

```bash
pkg install tur-repo x11-repo -y
pkg install git unzip wget curl ripgrep procps figlet neofetch -y
pkg install virglrenderer virglrenderer-android angle-android vulkan-loader-generic openssl -y

# 1. Remover renderizadores de software conflitantes
pkg remove '*icd-swrast' 2>/dev/null

# 2. Instalar o wrapper Vulkan para Mesa
wget '[https://github.com/ar37-rs/virgl-angle/releases/download/latest/mesa-vulkan-icd-wrapper_25.0.0-1_aarch64.deb](https://github.com/ar37-rs/virgl-angle/releases/download/latest/mesa-vulkan-icd-wrapper_25.0.0-1_aarch64.deb)'
dpkg -i mesa-vulkan-icd-wrapper_25.0.0-1_aarch64.deb
rm mesa-vulkan-icd-wrapper_25.0.0-1_aarch64.deb

# 3. Instalar a ferramenta vgl
wget '[https://github.com/ar37-rs/virgl-angle/raw/refs/heads/main/vgl](https://github.com/ar37-rs/virgl-angle/raw/refs/heads/main/vgl)'
chmod +x vgl && mv vgl $PREFIX/bin/
```

### Fase 3: Assistentes de Inteligência Artificial (Ollama + OpenCode + Gemini API)
Manteremos ferramentas locais de IA e recomendaremos o melhor padrão em nuvem:

1. **Instalação do Ollama:**
   ```bash
   pkg install ollama -y
   ollama serve &
   ```
   *(Em outra aba do Termux)*:
   ```bash
   ollama pull qwen2.5-coder:1.5b
   ```

2. **Binários do OpenCode:**
```bash
LATEST_OPCODE=$(curl -s "[https://api.github.com/repos/Haris131/opencode-termux/releases/latest](https://api.github.com/repos/Haris131/opencode-termux/releases/latest)" | grep "browser_download_url" | grep "aarch64.zip" | cut -d '"' -f 4)
curl -L -o opencode.zip "$LATEST_OPCODE"
unzip opencode.zip
chmod +x opencode
mv opencode $PREFIX/bin/
rm opencode.zip
```

3. **Variáveis de Ambiente (`~/.bashrc`):**
  ```bash
cat << 'EOF' >> ~/.bashrc
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=C.UTF-8

alias gpu='env -u LIBGL_ALWAYS_SOFTWARE GALLIUM_DRIVER=virpipe MESA_GL_VERSION_OVERRIDE=4.1COMPAT MESA_GLSL_VERSION_OVERRIDE=410'

export OPENAI_API_KEY="ollama"
export OPENAI_API_BASE="http://localhost:11434/v1"
export GEMINI_API_KEY="sua-chave-gemini-aqui"
export OPENROUTER_API_KEY="sua-chave-openrouter-aqui"

clear
echo 'Systemic Flow Dev Station' | figlet 2>/dev/null || echo 'Termux Dev Station'
neofetch 2>/dev/null || true
EOF
source ~/.bashrc
   ```

### Fase 4: Implantação do n8n e Limpeza Inteligente
Instalamos a automação do n8n e limpamos os caches para recuperar espaço de armazenamento:

```bash
curl -o termux-n8n-native.sh '[https://raw.githubusercontent.com/Yerensoncasares/termux-dev-station/main/termux-n8n-native.sh](https://raw.githubusercontent.com/Yerensoncasares/termux-dev-station/main/termux-n8n-native.sh)'
chmod +x termux-n8n-native.sh
bash termux-n8n-native.sh

npm cache clean --force && pip cache purge
pkg clean && apt autoremove --purge
rm -rf $PREFIX/tmp/*
```

### Fase 5: Instalação do XFCE, Servidores de Exibição e Ferramentas
```bash
pkg install xfce4 xfce4-goodies thunar htop -y 
pkg install tigervnc android-tools termux-x11-nightly -y
pkg install pulseaudio firefox godot python nodejs code-oss -y
```

### Fase 6: Solução contra o Encerramento de Processos (Android 12+)
Para evitar que o Android encerre seus processos em segundo plano:
```bash
adb pair 192.168.xxx.xxx:xxxxx xxxxxx
adb connect 192.168.xxx.xxx:xxxxx
adb shell "/system/bin/device_config set_sync_disabled_for_tests persistent"
adb shell "/system/bin/device_config put activity_manager max_phantom_processes 2147483647"
adb shell settings put global settings_enable_monitor_phantom_procs false
```

### Fase 7: Configuração de Inicialização (`xstartup` para VNC)
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
[ -r $HOME/.Xresources ] && xrdb$HOME/.Xresources
dbus-launch --exit-with-session startxfce4
EOF
chmod +x ~/.vnc/xstartup
```

### Fase 8: Personalização Visual e Estética (Systemic Flow)
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

### Fase 9: Habilitar GPU nos Lançadores (Opcional)
Você pode habilitar a GPU sob demanda para aplicativos pesados. Basta adicionar o seguinte prefixo no campo **Comando** do atalho do aplicativo:

`env -u LIBGL_ALWAYS_SOFTWARE GALLIUM_DRIVER=virpipe MESA_GL_VERSION_OVERRIDE=4.1COMPAT MESA_GLSL_VERSION_OVERRIDE=410`

---

## 🕹️ Scripts de Automação (`up`, `on`, `vnc-on`, `off`)

Crie estes scripts em seu diretório de binários e dê permissão de execução com `chmod +x <nome-do-script>`.

### 1. Script de Atualização (`up`)
```bash
cat << 'EOF' > $PREFIX/bin/up
#!/data/data/com.termux/files/usr/bin/bash
apt list --upgradable
yes | pkg update && pkg upgrade -y
EOF
chmod +x $PREFIX/bin/up
```

### 2. Script X11 Nativo (`on`)
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

### 3. Script VNC (`vnc-on`)
```bash
cat << 'EOF' > $PREFIX/bin/vnc-on
#!/data/data/com.termux/files/usr/bin/bash
termux-wake-lock
export TMPDIR=/data/data/com.termux/files/usr/tmp

vncserver -kill :1 >/dev/null 2>&1
rm -rf "$TMPDIR"/.X11-unix/X1 "$TMPDIR"/dbus-* "$TMPDIR"/pulse-* "$HOME"/.vnc/*.pid "$HOME"/.vnc/*.log

vgl q 2>/dev/null
vgl angle=vulkan &
sleep 2

pulseaudio --start --exit-idle-time=-1 2>/dev/null
vncserver :1 -geometry 1280x720 -depth 24 -localhost no
echo -e "\n[✓] VNC Server started. Connect with sua viewer: 127.0.0.1:5901"
EOF
chmod +x $PREFIX/bin/vnc-on
```

### 4. Script de Desligamento (`off`)
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

## 📜 Licença
Este projeto é distribuído sob a licença **MIT**. Aproveite sua nova estação de desenvolvimento portátil no Android!
