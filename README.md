# 📱 Termux-Dev-Station
La guía definitiva para convertir Termux en un entorno de desarrollo gráfico asistido por IA. KDE Plasma, VS Code, Godot Engine, OpenCode (Ollama) y PulseAudio en tu Android. Paso a paso, estable y sin scripts ocultos. ¡Perfecto para DeX o monitor externo!

```markdown
> 🚀 **¿Listo para convertir tu Android en un PC de desarrollo asistido por IA?** Sigue esta guía y tendrás KDE Plasma, Godot, VS Code y OpenCode funcionando en minutos. ¡No necesitas root ni scripts mágicos!
```
---

![Termux](https://img.shields.io/badge/Termux-000000?style=for-the-badge&logo=termux&logoColor=white)
![KDE Plasma](https://img.shields.io/badge/KDE_Plasma-1D99F3?style=for-the-badge&logo=kde&logoColor=white)
![Godot Engine](https://img.shields.io/badge/Godot_Engine-478CBF?style=for-the-badge&logo=godot-engine&logoColor=white)
![Ollama](https://img.shields.io/badge/Ollama-000000?style=for-the-badge&logo=ollama&logoColor=white)
![Open Source](https://img.shields.io/badge/Open_Source-Success?style=for-the-badge)

> **Una guía definitiva paso a paso para transformar Termux en un entorno de desarrollo completo con KDE Plasma, VS Code, Godot Engine y asistencia de IA local (OpenCode + Ollama), sin depender de scripts automatizados "mágicos".**

---

## 💡 Filosofía del Proyecto

He pasado por muchas guías desactualizadas y scripts que rompen el sistema. Esta guía **no** utiliza un script de automatización de un solo clic. Está diseñada paso a paso porque entender cómo funciona el entorno donde corren tus herramientas es vital. 

Si estás aprendiendo Linux, maquetando webs, creando juegos en Godot o interactuando con modelos de IA local desde tu dispositivo móvil, ejecutar e interiorizar cada comando te garantizará el control absoluto de tu estación portátil.

## 🚀 ¿Qué obtendrás al final?
* **Entorno de escritorio:** KDE Plasma fluido, ligero y estable en Android.
* **Servidor gráfico:** VNC Server configurado con resolución personalizada y sonido funcional mediante `pulseaudio`.
* **Estabilidad:** Solución definitiva al problema de Procesos Fantasma (*Phantom Processes Killer*) de Android 12+.
* **Herramientas de desarrollo:** 
  * **Asistencia por IA Local:** OpenCode integrado con Ollama (`qwen2.5-coder:1.5b`) para autocompletado y refactorización inteligente directamente en la terminal, 100% offline.
  * **Videojuegos:** Godot Engine.
  * **Editores de código:** Visual Studio Code (Code-OSS) y herramientas de texto.
  * **Runtimes:** Python y Node.js.
  * **Control de versiones:** Git.
  * **Utilidades del sistema:** `htop`, `wget`, `unzip`, `ripgrep` y funciones avanzadas de consola.
* **Automatización propia:** Scripts personalizados de arranque (`xstartup`) y apagado seguro (`xshutdown`).

---

## 📋 Requisitos Mínimos y Rendimiento Real

### ⚙️ Requisitos Mínimos Recomendados
* **Sistema Operativo:** Android 8.0 o superior (Atención en Android 12+ con el *Phantom Process Killer*, solucionado en la Fase 5).
* **Memoria RAM:** 3 GB mínimo (4 GB recomendados para multitarea fluida con VS Code, Godot y el modelo de IA local).
* **Almacenamiento Libre:** 6 GB a 8 GB libres (abarca todo el entorno gráfico, paquetes de desarrollo y el modelo cuantizado de IA).
* **Aplicaciones auxiliares necesarias:** 
  * [Termux](https://f-droid.org/en/packages/com.termux/) (instalado vía F-Droid o GitHub Releases).
  * Cliente VNC (ej. RealVNC Viewer, bVNC o VNC Viewer).

---

### 📱 Dispositivo de Prueba (Benchmarking)
Esta guía y su arquitectura fueron testeadas y optimizadas directamente en un equipo de **gama de entrada** para garantizar la máxima eficiencia:

| Parámetro | Especificación del entorno de prueba |
| :--- | :--- |
| **Dispositivo** | Tecno Spark 10C |
| **Procesador** | Octa-Core (GPU Mali) |
| **Memoria RAM Física** | 4 GB (RAM utilizable/libre para el entorno: ~1.0 GB a 1.5 GB) |
| **Prueba de Carga Simultánea** | 🎨 **Godot Engine** (Motor 2D) + 💻 **Code-OSS** (VS Code) + 🌐 **Firefox** + 🤖 **OpenCode / Ollama** |

> **Nota de rendimiento:** A pesar de ser un procesador modesto de entrada, la sesión gráfica responde de forma fluida para desarrollo web, creación de juegos 2D y asistencia de código por IA local, manteniendo un margen estable de memoria sin colapsar el sistema.
> 

---

## 🖼️ Vista Previa del Entorno

Así se ve tu nueva estación de desarrollo una vez completada la guía:

| Navegación web con Firefox | Editor de código VS Code |
|---------------------------|--------------------------|
| ![Firefox](./img/firefox-navegacion.png) | ![VS Code](./img/vscode-bienvenida.png) |

| Motor de videojuegos Godot | Terminal htop |
|----------------------------|---------------|
| ![Godot](./img/godot-project-manager.png) | ![htop](./img/htop-terminal.png) |

---

## 📖 Instrucciones de Instalación

# Guía de Instalación: Entorno de Desarrollo Gráfico en Termux

**Filosofía de esta guía:** 
Esta guía no utiliza un script de automatización de un solo clic. Está diseñada paso a paso porque entender cómo funciona el entorno donde corren tus herramientas es vital. Ya sea que estés maquetando interfaces web desde cero, optimizando código con tu IA local, o estructurando gráficas y mecánicas en motores como Godot, depender de abstracciones mágicas o scripts automáticos te deja vulnerable cuando ocurren errores. 

Ejecutar e interiorizar cada comando te garantiza el control absoluto de tu estación de desarrollo portátil, construyendo una base técnica sólida.
---

### 💡 Paso Previo: Descarga la APK Optimizada para tu Arquitectura

Antes de iniciar la Fase 1, se recomienda instalar la versión de Termux adecuada para tu procesador en lugar del paquete universal:

* **Versión Universal (F-Droid):** Pesa **~100 MB** porque incluye librerías para todas las arquitecturas posibles.
* **Versión Optimizada (Recomendada desde el GitHub Oficial de Termux):**
  * Para dispositivos de 64 bits (la gran mayoría de teléfonos actuales): Descarga el APK **`arm64-v8a`** (reduce el tamaño a solo **~30 MB**).
  * Para equipos más antiguos de 32 bits: Descarga la versión **`armeabi-v7a`**.

---

## Fase 1: Preparación del Sistema Base
Antes de instalar programas, necesitamos que Termux tenga los permisos adecuados y esté completamente actualizado.

*   **`termux-setup-storage`**
    *   *¿Qué hace?* Le otorga a Termux los permisos necesarios para acceder a los archivos de tu almacenamiento interno. Sin esto, no podrías guardar ni leer proyectos de tu dispositivo.

*   **`termux-change-repo`**
    *   *¿Qué hace?* Abre un menú para que elijas un servidor espejo (mirror) más cercano a tu localidad. Esto hace que las descargas de paquetes sean muchísimo más rápidas y estables.

*   **`apt upgrade -y`** seguido de **`pkg update && pkg upgrade`**
    *   *¿Qué hacen?* Actualizan las listas de software y descargan las últimas versiones de los componentes esenciales que ya trae Termux por defecto.

---

## Fase 2: Expansión de Repositorios y Herramientas Vitales
Por defecto, Termux no incluye paquetes gráficos ni software complejo. Necesitamos añadir repositorios adicionales.

*   **`pkg install tur-repo x11-repo`**
    *   *¿Qué hace?* `x11-repo` añade el catálogo de aplicaciones gráficas (necesarias para el entorno de escritorio) y `tur-repo` (Termux User Repository) añade herramientas extra mantenidas por la comunidad.

*   **`pkg install git unzip wget curl`**
    *   *¿Qué hace?* Instala utilidades de red y manejo de archivos. `git` es para control de versiones, `unzip` para descomprimir archivos, y `wget` / `curl` sirven para descargar recursos directamente desde internet a través de la consola.

---

## Fase 3: Configuración del Asistente IA Local (Ollama + OpenCode)
Para contar con autocompletado y asistencia de código inteligente local (sin enviar datos a servidores externos), configuraremos **Ollama** con un modelo optimizado y el ejecutable de **OpenCode**.

### 1. Instalación de Ollama y Descarga del Modelo
* **`pkg install ollama`**
  * *¿Qué hace?* Instala el motor de IA local directo desde el repositorio TUR.
* **`ollama serve &`**
  * *¿Qué hace?* Inicia el servidor de Ollama en segundo plano.

> ⚠️ **IMPORTANTE SOBRE OLLAMA:** 
> El comando `ollama serve` debe estar ejecutándose siempre para que OpenCode pueda comunicarse con el modelo. Te recomendamos ejecutar la descarga del modelo y los futuros comandos de OpenCode en una **nueva pestaña/sesión de terminal** o en una ventana separada dentro de KDE Plasma.

* **Descargar el modelo cuantizado:**
  ```bash
  ollama pull qwen2.5-coder:1.5b
  ```
  * *¿Qué hace? Descarga el modelo especializado en código **`qwen2.5-coder`** (1.5 mil millones de parámetros), ideal para mantener un consumo de RAM súper contenido (~1 GB) en dispositivos móviles.*
  
### 2. Descarga e Instalación de OpenCode
 
Ejecutaremos los siguientes comandos para posicionar los binarios y librerías compiladas en las rutas del sistema de Termux:

#### Descargar y descomprimir el paquete

```bash
curl -L -o opencode.zip [https://github.com/guysoft/opencode-termux/releases/latest/download/opencode-1.17.9-android-aarch64.zip](https://github.com/guysoft/opencode-termux/releases/latest/download/opencode-1.17.9-android-aarch64.zip)
unzip opencode.zip
```
#### Crear directorios de destino y mover binarios principales

```bash
mkdir -p $PREFIX/libexec/opencode$PREFIX/lib
mv opencode $PREFIX/bin/opencode
chmod +x $PREFIX/bin/opencode
```
#### Mover binario interno y asignar permisos

```bash
mv opencode.bin $PREFIX/libexec/opencode/opencode.bin
chmod +x $PREFIX/libexec/opencode/opencode.bin
```
#### Mover librerías compartidas necesarias

```bash
mv libtagfix.so libc++_shared.so libopentui.so $PREFIX/lib/
```
#### Instalar herramienta de búsqueda en texto requerida

```bash
pkg install ripgrep
```
### 3. Vinculación de OpenCode con Ollama
 
Para que OpenCode reconozca a Ollama como su proveedor predeterminado, configuraremos las variables de entorno en tu perfil de consola:

* Abre el archivo de configuración de Bash:

```bash
nano ~/.bashrc
```
* Añade las siguientes líneas al final del archivo:
#### Configuración para OpenCode con Ollama Local

```bash
export OPENAI_API_KEY="ollama"
export OPENAI_API_BASE="http://localhost:11434/v1"
```
Guarda (`Ctrl + O`, `Enter`), sal (`Ctrl + X`) y aplica los cambios:

```bash
source ~/.bashrc
```
Para probar el asistente: Con el servidor de Ollama corriendo en otra pestaña (`ollama serve`), simplemente escribe `opencode` en la terminal para iniciar el chat interactivo de desarrollo.

---

## Fase 4: Instalación del Entorno Gráfico y Desarrollo
Aquí es donde descargamos el núcleo visual, el audio y nuestros programas de trabajo.

*   **`pkg install plasma htop konsole dolphin`**
    *   *¿Qué hace?* Instala KDE Plasma (el entorno de escritorio gráfico), `konsole` (la terminal gráfica de KDE) y `htop` (un administrador de tareas para monitorear el consumo de RAM y CPU).

*   **`pkg install android-tools tigervnc`**
    *   *¿Qué hace?* `android-tools` proporciona la herramienta ADB para controlar el propio dispositivo internamente, y `tigervnc` es el servidor que transmitirá la imagen del escritorio para que podamos proyectarla en una pantalla.

*   **`pkg install pulseaudio firefox godot`**
    *   *¿Qué hace?* Instala el servidor de audio (PulseAudio), un navegador web funcional (Firefox) y el motor de videojuegos Godot.

*   **`pkg install python nodejs code-oss code-is-code-oss`**
    *   *¿Qué hace?* Instala los entornos de ejecución para Python y JavaScript (Node.js), además de la versión de código abierto de Visual Studio Code.

---

## Fase 5: Solución de Procesos Fantasma (Vía ADB)
Android tiene una medida de seguridad que cierra automáticamente los procesos en segundo plano que consumen mucha memoria. Como un entorno gráfico es pesado, el sistema lo cerrará si no desactivamos esta restricción.

1.  **`adb pair 192.168.xxx.xxx:xxxxx xxxxxx`** *(Sustituye con tus datos)*
    *   *¿Qué hace?* Empareja Termux de forma inalámbrica con las opciones de desarrollador del dispositivo.
2.  **`adb connect 192.168.xxx.xxx:xxxxx`** *(Sustituye con tus datos)*
    *   *¿Qué hace?* Establece la conexión final de depuración por red.
3.  **Ejecuta los siguientes comandos uno por uno:**
    ```bash
    adb shell "/system/bin/device_config set_sync_disabled_for_tests persistent"
    adb shell "/system/bin/device_config put activity_manager max_phantom_processes 2147483647"
    adb shell settings put global settings_enable_monitor_phantom_procs false
    ```
    *   *¿Qué hacen?* Desactivan el monitor de procesos fantasma de Android y aumentan el límite de tareas en segundo plano al máximo posible, garantizando estabilidad.

> 💡 **Consejos extra para exprimir el rendimiento de tu Android:**
> 1. **Reducir Animaciones:** Ve a *Opciones de Desarrollador* en Android y ajusta la *Escala de animación de ventana*, *Transición* y *Durador* a `0.5x` o `Desactivadas`. Esto libera procesamiento gráfico continuo.
> 2. **RAM Virtual / Ampliable:** Aunque tu dispositivo tenga la opción de "RAM virtual", ten en cuenta que esta utiliza la memoria interna (Flash), la cual es mucho más lenta que la RAM física. La estabilidad real dependerá de tus gigabytes de RAM física.
 
---

## Fase 6: Configuración del Servidor VNC
Vamos a configurar el puente visual para transmitir la interfaz gráfica.

*   **`vncserver`**
    *   *¿Qué hace?* Al ejecutarlo por primera vez, pedirá crear una contraseña de 6 dígitos. Escríbela, repítela, y cuando pregunte por una contraseña de solo lectura, presiona **n** y luego Enter.
*   **`vncserver -kill :1`**
    *   *¿Qué hace?* Detiene el servidor temporal que acabamos de crear para configurar los scripts de inicio correctamente.

---

## Fase 7: Configuración del Script de Inicio (`xstartup`)
Automatizaremos el encendido correcto de la sesión gráfica, el audio y la limpieza previa.

1.  Abre el editor de texto nativo ejecutando:
    ```bash
    nano ~/.vnc/xstartup
    ```
2.  Copia y pega exactamente el siguiente código en el editor:

```bash
#!/data/data/com.termux/files/usr/bin/sh

# Configurar lenguaje 
export LANG=es_ES.UTF-8
export LANGUAGE=es_ES.UTF-8
export LC_ALL=C.UTF-8

# Configurar directorios temporales nativos de Termux
export TMPDIR=/data/data/com.termux/files/usr/tmp
export XDG_RUNTIME_DIR=${TMPDIR}
export QT_QPA_PLATFORM=xcb

# --- BLOQUE DE LIMPIEZA AUTOMÁTICA PREVIA A LA SESIÓN ---
# Eliminar sockets colgados de X11 y D-Bus
rm -rf $TMPDIR/.X11-unix/X*
rm -rf $TMPDIR/dbus-*
rm -rf $TMPDIR/pulse-*

# Limpiar caché de fuentes y previsualizaciones de KDE/Qt
rm -rf $HOME/.cache/ico*
rm -rf $HOME/.cache/kio*
rm -rf $HOME/.cache/plasma*
rm -rf $HOME/.cache/QtWebEngine

# Eliminar bloqueos de archivos de sesiones anteriores
rm -f $HOME/.config/session/*
# --------------------------------------------------------

# Iniciar PulseAudio adaptado a Termux
pulseaudio --start --exit-idle-time=-1 2>/dev/null

# Cargar recursos gráficos básicos
[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources

# Arrancar KDE Plasma envuelto en una sesión de D-Bus activa
dbus-launch --exit-with-session startplasma-x11
```
*(Guarda con `Ctrl + O`, presiona `Enter` y sal con `Ctrl + X`)*

3.  Otorga permisos de ejecución:
    ```bash
    chmod +x ~/.vnc/xstartup
    ```
    *   *¿Qué hace?* Convierte el archivo de texto en un programa ejecutable.

> **Para iniciar tu entorno gráfico y hacerlo visible en tu red local:** 
> Ejecuta `vncserver` (sin la bandera `-localhost`). Luego, desde tu cliente VNC (ej. RealVNC, bVNC) en otro dispositivo, conecta usando la **IP local de tu teléfono** y el puerto `5901` (ej. `192.168.1.45:5901`).
> 
> ⚠️ **Seguridad:** Al quitar `-localhost`, cualquiera en tu red WiFi podría intentar conectarse. La contraseña que pusiste al ejecutar `vncserver` por primera vez es tu única barrera, así que no la compartas.

---

## Fase 8: Configuración del Script de Cierre (`xshutdown`)
Cerrar los programas a la fuerza deja "basura" en la memoria. Este script apaga los procesos de forma limpia y segura.

1.  Abre el editor de texto para crear el archivo de apagado:
    ```bash
    nano ~/.vnc/xshutdown
    ```
2.  Copia y pega exactamente el siguiente código:

```bash
#!/data/data/com.termux/files/usr/bin/sh

# Definir rutas temporales nativas de Termux
export TMPDIR=/data/data/com.termux/files/usr/tmp

# 1. Terminar los procesos de la sesión actual de forma ordenada
kquitapp5 plasmashell 2>/dev/null
killall startplasma-x11 2>/dev/null

# 2. Detener D-Bus y PulseAudio
killall dbus-daemon 2>/dev/null
pulseaudio --kill 2>/dev/null

# 3. Limpieza de seguridad final para dejar el entorno impecable
rm -rf $TMPDIR/.X11-unix/X*
rm -rf $TMPDIR/dbus-*
rm -rf $TMPDIR/pulse-*
```

3.  Otorga permisos de ejecución:
    ```bash
    chmod +x ~/.vnc/xshutdown
    ```

> **Para apagar el entorno de forma segura:** Primero ejecuta tu script `~/.vnc/xshutdown` y luego cierra el puerto del servidor VNC ejecutando `vncserver -kill :1`.
---

## 🕹️ Primeros pasos dentro de tu nueva Estación de Desarrollo

Una vez conectado vía VNC y viendo el escritorio KDE Plasma:

1.  **Abrir una terminal gráfica:** Haz clic en el ícono de `Konsole` (la consola con forma de pantalla negra) en la barra de tareas inferior.
2.  **Lanzar Godot Engine:** Escribe `godot` en la terminal y presiona Enter. (O búscalo en el menú de aplicaciones > Juegos).
3.  **Lanzar VS Code:** Escribe `code-oss` en la terminal. (O búscalo en el menú > Desarrollo).
4.  **Crear un proyecto web:** Dentro de la terminal gráfica, navega con `cd ~/storage/downloads` (para acceder a tus archivos descargados) y crea tu carpeta de trabajo.

> **Consejo:** Si quieres editar archivos directamente desde el explorador de archivos de KDE (Dolphin), haz clic derecho sobre un archivo `.txt` o `.js` y selecciona "Abrir con > Code-OSS".

---

## 🤝 Créditos y Contribuciones

Este proyecto fue creado a base de prueba, error y mucha investigación. 
Si esta guía te ha sido útil para tu propio proyecto o repositorio, **te agradecería mucho que me menciones o dejes un enlace a este repositorio original**. 

¡Las contribuciones, sugerencias y mejoras son totalmente bienvenidas! Si descubres alguna actualización en los repositorios, no dudes en abrir un *Issue* o un *Pull Request*.

* **Entorno base y guía:** Diseñado y probado por el autor original de este repositorio.
* **Compilación de OpenCode para Termux:** Un reconocimiento especial al proyecto [opencode-termux de GuySoft](https://github.com/guysoft/opencode-termux) por compilar y adaptar los binarios de `opencode` y sus librerías compartidas (`libopentui.so`, `libtagfix.so`) para la arquitectura `aarch64` en Termux.

¡Las contribuciones, sugerencias e Issues son totalmente bienvenidos!

## 📜 Licencia

Este proyecto está bajo la licencia [MIT]. Eres libre de usar, modificar y compartir esta guía, siempre y cuando se incluya la atribución correspondiente al autor original.
