# WebReconTools Setup Script

Este script instala y configura herramientas de reconocimiento web en Linux, ideal para profesionales y entusiastas de la ciberseguridad. Automatiza la instalación de herramientas populares como `katana`, `subfinder`, `amass`, y muchas más, haciendo más eficiente la configuración de entornos de pentesting.

## Características

- **Soporte para Bash y Zsh**: Detecta automáticamente la shell en uso y ajusta las configuraciones en consecuencia.
- **Instalación automatizada**: Configura múltiples herramientas en un solo paso.
- **Entorno Python virtual**: Crea un entorno virtual para herramientas basadas en Python para una gestión de dependencias más limpia.

## Requisitos

- **Sistema operativo**: Kali Linux u otra distribución basada en Debian.
- **Permisos de superusuario**: Algunas instalaciones requieren `sudo`.
- **Herramientas adicionales**: `pip`, `go`, y `wget` son necesarios.

## Instalación

1. Clona este repositorio e ingresa en el directorio:

   ```bash
   git clone https://github.com/tuusuario/WebReconTools.git
   cd WebReconTools
2. Haz que el script sea ejecutable:
```bash
chmod +x setup.sh
```
3. Ejecuta el script:

```bash
    ./setup.sh
```
Uso

El script realiza las siguientes acciones:

    Actualización del sistema y detección de la shell (Bash o Zsh).
    Instalación de dependencias: Instala Go, Python y herramientas esenciales.
    Configuración de variables de entorno: Añade GOPATH y rutas adicionales al archivo de configuración de la shell (~/.bashrc o ~/.zshrc).
    Instalación de herramientas Go: Herramientas como katana, subfinder, amass, assetfinder, y más.
    Clonación de repositorios para herramientas adicionales.
    Finalización: Muestra un mensaje indicando cómo activar el entorno virtual de Python.

Herramientas Instaladas

El script incluye la instalación de las siguientes herramientas de ciberseguridad:

    Herramientas de reconocimiento: katana, subfinder, amass, assetfinder
    Escaneo de subdominios: sublist3r, n0kovo_subdomains
    Escaneo de puertos: naabu
    Otras herramientas útiles: httprobe, ffuf, gobuster, nuclei, wfuzz, arjun, socialhunter, nikto, httpx, waybackurls

Contribuciones

¡Las contribuciones son bienvenidas! Si deseas añadir más herramientas o mejorar el script, por favor abre un pull request o sugiere cambios.
