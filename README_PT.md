# 📱 Termux-Dev-Station: A Estação de Desenvolvimento Nativa Definitiva no Android
**Um projeto da Systemic Flow**

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

🌐 **Idiomas disponíveis / Available Languages:**

[🇪🇸 Español](README.md) | [🇺🇸 English](README_EN.md) | [🇨🇳 中文](README_ZH.md) | [🇧🇷 Português](README_PT.md)

</div>

Bem-vindo! Se você já quis transformar seu dispositivo Android (no modo DeX, conectado a um monitor externo ou diretamente no seu tablet/celular) em um autêntico computador de desenvolvimento sem necessidade de root, pesadas camadas de emulação, nem scripts mágicos e obscuros, você está no lugar certo.

Este guia quebra o mito de que você precisa instalar sistemas operacionais inteiros para programar de verdade em um celular. Aqui combinamos **desempenho nativo, editores leves e aceleração gráfica direta** para construir um ambiente 100% estável. 

O guia une o melhor de dois mundos: **uma explicação amigável, acessível e passo a passo** para que qualquer usuário compreenda o que acontece em seu dispositivo, junto com **a precisão técnica exata**, comandos completos e scripts de automação prontos para extrair o máximo do seu hardware.

---

## 💡 Filosofia do Projeto e Transparência

Percorri o caminho de testar guias desatualizados, emuladores pesados e scripts automáticos que instalam distribuições Linux inteiras (PRoot) e acabam sobrecarregando o sistema operacional sem que você saiba o que aconteceu. Este guia é diferente: **é 100% nativo do Termux** e **não** utiliza automações às cegas.

Aqui não há camadas intermediárias. Usamos o ecossistema puro do Termux para alcançar o desempenho real do hardware do seu dispositivo. Cada passo é projetado para que você compreenda exatamente o que está sendo instalado e configurado.

Esteja você criando interfaces web com **HTML, CSS e JS**, programando mecânicas na **Godot Engine**, automatizando fluxos com o **Node-RED** ou programando com a ajuda de uma **IA**, entender seu ambiente a nível nativo lhe dará o controle absoluto, eliminando a latência e garantindo que sua estação seja ágil e estável.

---

## 🖼️ Prévia do Ambiente

É assim que fica sua estação de trabalho após a conclusão do processo e a aplicação da personalização da Systemic Flow:

| Área de Trabalho XFCE (Otimizada e Moderna) | Editor de Código (Code OSS) |
| :---: | :---: |
| ![XFCE Moderno](./img/xfce-modern-desktop.png) | ![VS Code](./img/vscode-bienvenida.png) |

| Motor de Jogos Godot | Assistente de IA com OpenCode |
| :---: | :---: |
| ![Godot](./img/godot-project-manager.png) | ![OpenCode](./img/opencode-asistente.png) |

| Automação com Node-RED | Navegação Web (Firefox) |
| :---: | :---: |
| ![Node-RED](./img/nodered-dashboard.png) | ![Firefox](./img/firefox-navegacion.png) |

---

## 📍 Índice de Conteúdos

1. [⚡ Arquitetura Híbrida de Aceleração (VirGL + Vulkan + ANGLE)](#-arquitetura-híbrida-de-aceleração-virgl--vulkan--angle)
2. [📋 Ambiente e Servidor Gráfico](#-ambiente-e-servidor-gráfico)
3. [🚀 Passo Prévio: Preparando o Termux](#-passo-prévio-preparando-o-termux)
4. [🛠️ Guia de Instalação Passo a Passo (Manual)](#️-guia-de-instalação-passo-a-passo-manual)
   * [Fase 1: Preparação do Sistema Base](#fase-1-preparação-do-sistema-base)
   * [Fase 2: Repositórios, Utilitários do Sistema e Camada de Aceleração Gráfica (VirGL)](#fase-2-repositórios-utilitários-do-sistema-e-camada-de-aceleração-gráfica-virgl)
   * [Fase 3: Assistentes de Inteligência Artificial (Ollama + OpenCode + API Gemini)](#fase-3-assistentes-de-inteligência-artificial-ollama--opencode--api-gemini)
   * [Fase 4: Implantação do Node-RED e Limpeza Inteligente de Espaço](#fase-4-implantação-do-node-red-e-limpeza-inteligente-de-espaço)
   * [Fase 5: Instalação do Ambiente XFCE, Servidores Gráficos e Ferramentas](#fase-5-instalação-do-ambiente-xfce-servidores-gráficos-e-ferramentas)
   * [Fase 6: Solução para o Bloqueio de Processos Fantasma (Android 12+)](#fase-6-solução-para-o-bloqueio-de-processos-fantasma-android-12)
   * [Fase 7: Configuração de Inicialização (`xstartup` para VNC)](#fase-7-configuração-de-inicialização-xstartup-para-vnc)
   * [Fase 8: Personalização Visual e Estética (Systemic Flow)](#fase-8-personalização-visual-e-estética-systemic-flow)
   * [Fase 9: Habilitar Aceleração por GPU nos Lançadores (Opcional)](#fase-9-habilitar-aceleração-por-gpu-nos-lançadores-opcional)
5. [🕹️ Scripts de Automação (`up`, `on`, `vnc-on`, `off`)](#️-scripts-de-automação-up-on-vnc-on-off)
6. [📜 Licença](#-licença)
   
---
   
## ⚡ Arquitetura Híbrida de Aceleração (VirGL + Vulkan + ANGLE)

Diferente da maioria dos guias limitados a processadores Snapdragon (Adreno), esta configuração habilita a **aceleração gráfica por GPU real em processadores com GPU Mali** (MediaTek, Exynos, etc.) por meio de uma cadeia de tradução nativa. 

O verdadeiro segredo do desempenho da Systemic Flow está na nossa **arquitetura sob demanda**:
1. Renderizamos o ambiente de desktop por software (CPU) para garantir estabilidade absoluta, eliminando pela raiz as telas pretas e travamentos (erros `BadMatch`).
2. Delegamos o processamento 3D para a GPU de forma isolada **apenas** para os aplicativos que o exigem (como Godot Engine ou Firefox).

Com esse método, o desempenho dispara, a fluidez é total e seu dispositivo permanece frio (~36 °C) mesmo sob tarefas pesadas.

---

## 📋 Ambiente e Servidor Gráfico

Para garantir que seu dispositivo renda ao máximo sem devorar a memória RAM, otimizamos as opções:

### 1. O Desktop: XFCE4
* **XFCE:** Leve, extremamente rápido e minimalista. É o padrão deste guia. Mais adiante mostraremos como personalizá-lo com painéis e menus para que fique tão moderno e profissional quanto ambientes mais pesados, porém consumindo uma fração dos recursos.

### 2. Escolha do Servidor Gráfico (Display Server)
* **X11 Nativo (`termux-x11-nightly`):** Renderização direta na tela do dispositivo por meio de seu app dedicado (`DISPLAY=:0`), oferecendo a menor latência possível e a melhor integração com o toque. É a opção principal recomendada.
* **Servidor VNC (TigerVNC):** Clássico e universal. Mantemos como uma excelente alternativa para os usuários que precisam trabalhar em telas grandes e não contam com projetor, porta HDMI ou modo DeX. Permite conectar-se a `127.0.0.1:5901` a partir de qualquer visualizador VNC em um monitor externo via rede local. 

*Instalaremos ambas as opções para que você tenha total flexibilidade!*

---

## 🚀 Passo Prévio: Preparando o Termux

Para evitar incompatibilidades com pacotes universais pesados, recomendamos baixar o APK do Termux adequado para a sua arquitetura (preferencialmente **`arm64-v8a`** a partir dos Releases oficiais do GitHub em vez do F-Droid, reduzindo o tamanho base para ~30 MB).

---

## 🛠️ Guia de Instalação Passo a Passo (Manual)

### Fase 1: Preparação do Sistema Base
Concedemos permissões de armazenamento, atualizamos os espelhos (opcional se desejar trocar de servidor) e atualizamos os pacotes do sistema:

```bash
termux-setup-storage
termux-change-repo  # (Opcional: execute isto se desejar trocar os espelhos de repositórios)
apt list --upgradable
apt full-upgrade -y
```

### Fase 2: Repositórios, Utilitários do Sistema e Camada de Aceleração Gráfica (VirGL)
Adicionamos os repositórios comunitários essenciais (`tur-repo`, `x11-repo`), ferramentas de rede, utilitários de sistema indispensáveis para gerenciamento de processos (`procps` para `killall` e `pkill`), decorações de terminal (`figlet`, `neofetch`) e preparamos a camada avançada de aceleração gráfica para processadores Mali usando ANGLE e Vulkan:

```bash
pkg install tur-repo x11-repo -y
pkg install git unzip wget curl ripgrep procps figlet neofetch -y
pkg install virglrenderer virglrenderer-android angle-android vulkan-loader-generic openssl -y

# 1. Remover renderizadores por software conflitantes, se existirem
pkg remove '*icd-swrast' 2>/dev/null

# 2. Instalar o wrapper do Vulkan para Mesa
wget 'https://github.com/ar37-rs/virgl-angle/releases/download/latest/mesa-vulkan-icd-wrapper_25.0.0-1_aarch64.deb'
dpkg -i mesa-vulkan-icd-wrapper_25.0.0-1_aarch64.deb
rm mesa-vulkan-icd-wrapper_25.0.0-1_aarch64.deb

# 3. Instalar a ferramenta vgl para gerenciar a inicialização do servidor gráfico
wget 'https://github.com/ar37-rs/virgl-angle/raw/refs/heads/main/vgl'
chmod +x vgl && mv vgl $PREFIX/bin/
```

### Fase 3: Assistentes de Inteligência Artificial (Ollama + OpenCode + API Gemini)
Manteremos ferramentas locais de IA e recomendaremos o melhor padrão na nuvem:

1. **Instalação do Ollama e Modelo Local:**
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
# 1. Obter a URL de download limpa
LATEST_OPCODE=$(curl -s "https://api.github.com/repos/Haris131/opencode-termux/releases/latest" | grep "browser_download_url" | grep "aarch64.zip" | cut -d '"' -f 4)

# 2. Baixar, conceder permissões e instalar o binário no caminho do sistema
curl -L -o opencode.zip "$LATEST_OPCODE"
unzip opencode.zip
chmod +x opencode
mv opencode $PREFIX/bin/

# 3. Limpar o arquivo compactado residual
rm opencode.zip
```

3. **Configuração de Variáveis (`~/.bashrc`):**
   Você pode configurar seu arquivo `~/.bashrc` com a seguinte estrutura (que inclui mensagem de boas-vindas com `figlet` e `neofetch`, variáveis de ambiente e suporte a IA local/nuvem):
   ```bash
cat << 'EOF' >> ~/.bashrc
# Configuração de Idioma / Localização (Português UTF-8)
export LANG=pt_BR.UTF-8
export LANGUAGE=pt_BR.UTF-8
export LC_ALL=C.UTF-8

# Alias para habilitar a GPU sob demanda em apps pesados (ex: gpu godot4)
alias gpu='env -u LIBGL_ALWAYS_SOFTWARE GALLIUM_DRIVER=virpipe MESA_GL_VERSION_OVERRIDE=4.1COMPAT MESA_GLSL_VERSION_OVERRIDE=410'

# Variáveis de Ambiente de IA (Ollama, Gemini, OpenRouter)
export OPENAI_API_KEY="ollama"
export OPENAI_API_BASE="http://localhost:11434/v1"
export GEMINI_API_KEY="sua-chave-api-gemini-aqui"
export OPENROUTER_API_KEY="sua-chave-api-openrouter-aqui"

clear
echo 'Systemic Flow Dev Station' | figlet 2>/dev/null || echo 'Termux Dev Station'
neofetch 2>/dev/null || true
EOF
source ~/.bashrc
   ```

### Fase 4: Implantação do Node-RED e Limpeza Inteligente de Espaço
Instalamos a plataforma leve de automação baseada em eventos (Node-RED) e executamos uma rotina de limpeza profunda para liberar espaço:

```bash
curl -o termux-nodered-native.sh 'https://raw.githubusercontent.com/Yerensoncasares/termux-dev-station/main/termux-nodered-native.sh'
chmod +x termux-nodered-native.sh
bash termux-nodered-native.sh

# Rotina de limpeza de armazenamento
npm cache clean --force && pip cache purge 2>/dev/null
pkg clean && apt autoremove --purge -y
rm -rf $PREFIX/tmp/*
```

### Fase 5: Instalação do Ambiente XFCE, Servidores Gráficos e Ferramentas
Instalamos o ambiente gráfico XFCE4 junto com seus complementos essenciais, os servidores de exibição (`TigerVNC` e o pacote nativo `termux-x11-nightly`), além do sistema de áudio e das ferramentas de desenvolvimento nativas:

```bash
# Ambiente XFCE ultraleve e aplicativos básicos (agrupado para otimização)
pkg install xfce4 xfce4-goodies thunar htop xfce4-places-plugin picom geany qgit audacity mtpaint -y 

# Servidores gráficos e ferramentas ADB
pkg install tigervnc android-tools -y
pkg install termux-x11-nightly -y  # Servidor X11 nativo de alta fluidez

# Áudio e configuração pós-instalação
pkg install pulseaudio -y

# Aplicativos de desenvolvimento nativos
pkg install python nodejs code-oss -y
```

### Fase 6: Solução para o Bloqueio de Processos Fantasma (Android 12+)
Para evitar que o Android mate seus processos em segundo plano ao alternar entre aplicativos, use ADB Sem Fio a partir das Opções do Desenvolvedor:

```bash
adb pair 192.168.xxx.xxx:xxxxx xxxxxx
adb connect 192.168.xxx.xxx:xxxxx
adb shell "/system/bin/device_config set_sync_disabled_for_tests persistent"
adb shell "/system/bin/device_config put activity_manager max_phantom_processes 2147483647"
adb shell settings put global settings_enable_monitor_phantom_procs false
```

### Fase 7: Configuração de Inicialização (`xstartup` para VNC)
Se você decidir usar VNC, configure seu arquivo de inicialização `~/.vnc/xstartup`:

1. Inicialize o servidor VNC para gerar a estrutura:
   ```bash
   vncserver && vncserver -kill :1
   ```
2. Edite `~/.vnc/xstartup`:
```bash
cat << 'EOF' > ~/.vnc/xstartup
#!/data/data/com.termux/files/usr/bin/sh

export localhost="no"

# Forçar renderização por software e definir variáveis de ambiente (sincronizado com vnc-on)
export LIBGL_ALWAYS_SOFTWARE=1
export GALLIUM_DRIVER=llvmpipe
export DISPLAY=:1

xset s off &
xset -dpms &

# Localização e variáveis temporárias
export LANG=pt_BR.UTF-8
export LANGUAGE=pt_BR.UTF-8
export LC_ALL=C.UTF-8
export TMPDIR=/data/data/com.termux/files/usr/tmp
export XDG_RUNTIME_DIR=${TMPDIR}

# Carregar recursos e iniciar sessão XFCE
[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources
dbus-launch --exit-with-session startxfce4
EOF
chmod +x ~/.vnc/xstartup
```

---

### Fase 8: Personalização Visual e Estética (Systemic Flow)
Para que seu ambiente fique moderno e minimalista, instalaremos os temas de interface, o prompt de comando interativo e os ícones.

Execute o seguinte bloco para instalar o `starship` (com o preset Tokyo Night), o `lsd` e baixar o pacote completo de recursos (*assets*) da Systemic Flow (fontes, temas GTK e cursores) diretamente do nosso release oficial:

```bash
# 1. Instalação de temas oficiais e utilitários de terminal
pkg install arc-gtk-theme papirus-icon-theme starship lsd fontconfig-utils -y

# 2. Configuração do prompt Starship (Preset Tokyo Night)
mkdir -p ~/.config
starship preset tokyo-night -o ~/.config/starship.toml

# 3. Limpeza e instalação do pacote de recursos visuais
rm -rf ~/.fonts ~/.themes ~/.icons ~/assets.zip
curl -L -o ~/assets.zip "https://github.com/Yerensoncasares/termux-dev-station/releases/download/V1.0/assets.zip"
unzip -o ~/assets.zip -d ~/
rm ~/assets.zip

# 4. Instalação automática de lançadores e configuração da área de trabalho
cp -r ~/.icons ~/.themes ~/.fonts ~/
fc-cache -fv
update-desktop-database ~/.local/share/applications/ 2>/dev/null || true

# 5. Injeção limpa de aliases e Starship no ~/.bashrc
grep -q 'starship init bash' ~/.bashrc || echo 'eval "$(starship init bash)"' >> ~/.bashrc
grep -q 'alias ls="lsd"' ~/.bashrc || echo 'alias ls="lsd"' >> ~/.bashrc

# 6. Aplicar alterações na sessão atual
source ~/.bashrc
```
 ---

### Fase 9: Habilitar Aceleração por GPU nos Lançadores (Opcional)
Nossa arquitetura renderiza a interface por software por padrão para máxima estabilidade, mas você pode habilitar a GPU sob demanda para aplicativos pesados sem a necessidade de usar o terminal.

**Importante:** A renderização é diferenciada por aplicativo:

* **Code-OSS (VS Code):** Renderizado **por software** (`LIBGL_ALWAYS_SOFTWARE=1`) para evitar *glitches* do Electron. Não é recomendado usar aceleração por GPU com o Code-OSS, pois sua arquitetura Electron se beneficia da renderização por CPU.
* **Firefox e Godot Engine:** Utilizam a **GPU sob demanda** (`GALLIUM_DRIVER=virpipe`) quando o processamento 3D for necessário. Esses aplicativos são otimizados para alternar entre renderização por software e GPU conforme a necessidade.

Para abri-los diretamente a partir do Menu Whisker ou do Painel inferior:

1. Clique com o botão direito sobre o aplicativo no Menu Whisker ou no Painel e selecione **Editar aplicativo** (ou *Propriedades*).
2. No campo **Comando**, use o prefixo apropriado:

* **Code-OSS:** `env LIBGL_ALWAYS_SOFTWARE=1 /data/data/com.termux/files/usr/bin/code-oss %F`
* **Firefox:** `env -u LIBGL_ALWAYS_SOFTWARE GALLIUM_DRIVER=virpipe MESA_GL_VERSION_OVERRIDE=4.1COMPAT MESA_GLSL_VERSION_OVERRIDE=410 firefox %u`
* **Godot Engine:** `env -u LIBGL_ALWAYS_SOFTWARE GALLIUM_DRIVER=virpipe MESA_GL_VERSION_OVERRIDE=4.1COMPAT MESA_GLSL_VERSION_OVERRIDE=410 godot %u`

> **Nota:** Não é necessário (nem recomendável) aplicar ajustes de GPU a ferramentas leves do sistema, como o gerenciador de arquivos ou o monitor de tarefas. O ambiente XFCE sempre usa renderização por software para estabilidade.

---

## 🕹️ Scripts de Automação (`up`, `on`, `vnc-on`, `off`)

Para evitar ter que digitar comandos longos toda vez que ligar ou desligar sua estação, você pode criar esses scripts em seu diretório de trabalho (ou em `~/`). Certifique-se de dar permissões de execução com `chmod +x <nome-script>.sh`.

### 1. Script de Atualização do Sistema (`up`)
Atualiza a lista de pacotes e o sistema completo de forma autônoma.
```bash
cat << 'EOF' > $PREFIX/bin/up
#!/data/data/com.termux/files/usr/bin/bash
apt list --upgradable
yes | pkg update && pkg upgrade -y
EOF
chmod +x $PREFIX/bin/up
```

### 2. Script de Inicialização Gráfica X11 Nativa (`on`)
Inicia o bloqueio WakeLock para evitar a suspensão do sistema, limpa sockets anteriores, inicializa o servidor ANGLE/Vulkan via `vgl`, inicia o app Termux-X11, configura o áudio do PulseAudio e executa o XFCE de forma limpa utilizando renderização por software para máxima estabilidade.
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

# Iniciar servidor gráfico em modo Vulkan
vgl angle=vulkan &
sleep 2

# Iniciar X11 e o aplicativo Android
export DISPLAY=:0
termux-x11 :0 -ac &
sleep 2
am start --user 0 -n com.termux.x11/.MainActivity >/dev/null 2>&1

# Configuração de áudio e ambiente seguro
pulseaudio --start --exit-idle-time=-1 2>/dev/null
export LANG=pt_BR.UTF-8
export LIBGL_ALWAYS_SOFTWARE=1
export GALLIUM_DRIVER=llvmpipe

[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources

# Inicialização limpa e nativa do XFCE
dbus-run-session -- startxfce4
EOF
chmod +x $PREFIX/bin/on
```
### 3. Script de Inicialização VNC (`vnc-on`)
Inicia o servidor gráfico VirGL, o serviço de áudio PulseAudio e o servidor TigerVNC em `127.0.0.1:5901`.
```bash
cat << 'EOF' > $PREFIX/bin/vnc-on
#!/data/data/com.termux/files/usr/bin/bash

termux-wake-lock
export TMPDIR=/data/data/com.termux/files/usr/tmp
export DISPLAY=:1

# 1. Limpeza extrema prévia (evita o erro "A VNC server is already running as :1")
vncserver -kill :1 >/dev/null 2>&1
rm -rf "$TMPDIR"/.X11-unix/X1 "$TMPDIR"/dbus-* "$TMPDIR"/pulse-* "$HOME"/.vnc/*.pid "$HOME"/.vnc/*.log

# 2. Iniciar servidor gráfico em modo Vulkan e configuração de ambiente
vgl q 2>/dev/null
pkill -9 -f virgl 2>/dev/null
vgl angle=vulkan &
sleep 2
sync

# 3. Áudio
pulseaudio --start --exit-idle-time=-1 2>/dev/null

# 4. Iniciar VNC com sincronização garantida
vncserver :1 -geometry 1280x720 -depth 24 -localhost no
echo -e "\n[✓] Servidor VNC iniciado. Conecte-se com seu visualizador em: 127.0.0.1:5901"
renice -n -10 -p $(pgrep -f vncserver) 2>/dev/null
EOF
chmod +x $PREFIX/bin/vnc-on
```

### 4. Script de Desligamento Limpo (off)
Interrompe os daemons gráficos, servidores X11/VNC/VirGL, libera o PulseAudio e limpa os sockets temporários.
```bash
cat << 'EOF' > $PREFIX/bin/off
#!/data/data/com.termux/files/usr/bin/bash

termux-wake-unlock
export TMPDIR=/data/data/com.termux/files/usr/tmp

echo "Desligando estação de desenvolvimento..."

# 1. Matar ambiente XFCE impiedosamente
killall -9 xfce4-session startxfce4 xfwm4 xfdesktop xfce4-panel 2>/dev/null

# 2. Parar Servidores Gráficos (VNC, X11 e Vulkan)
vncserver -kill :1 >/dev/null 2>&1
pkill -9 Xvnc 2>/dev/null
am force-stop com.termux.x11 2>/dev/null
pkill -9 -f termux-x11 2>/dev/null
vgl q 2>/dev/null
pkill -9 -f virgl 2>/dev/null

# 3. Parar D-Bus e Áudio
killall -9 dbus-daemon 2>/dev/null
pulseaudio --kill 2>/dev/null

# 4. Limpeza profunda de temporários e lixo acumulado
rm -rf "$TMPDIR"/.X11-unix/X* "$TMPDIR"/dbus-* "$TMPDIR"/pulse-* 
rm -rf "$HOME"/.vnc/*.pid "$HOME"/.vnc/*.log "$HOME"/.cache/sessions/*

echo "[✓] Tudo desligado e limpo. Memória liberada."
EOF
chmod +x $PREFIX/bin/off
```

> **Nota:** Para criar e ativar qualquer um desses scripts manualmente, você pode criá-los com `nano <nome>.sh`, colar o conteúdo, salvar e executar:
> ```bash
> chmod +x nome.sh
> ```

---

## 📜 Licença
Este projeto é distribuído sob a licença **MIT**. Aproveite sua nova estação de desenvolvimento portátil no Android!
