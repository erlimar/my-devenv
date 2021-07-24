Minha configuração no Windows 10
================================

> Ainda não temos script de automação, somente essas instruções mesmo.

Requisitos:

* Subsistema do Windows para Linux
> https://docs.microsoft.com/en-us/windows/wsl/install-win10
```powershell
# Ativar funcionalidades
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

# Reiniciar o sistema
shutdown -r

# Baixa instala o pacote de atualização do kernel do Linux
iwr https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi -OutFile wsl_update_x64.msi
.\wsl_update_x64.msi

# Definir WSL 2 como padrão
wsl --set-default-version 2
```

* Terminal do Windows
> https://github.com/microsoft/terminal

* Chocolatey
> https://chocolatey.org

* Git `v2.32.0` ou superior
> https://git-scm.com

* Fonte [Cascadia Code](https://github.com/Microsoft/Cascadia-Code)
> https://github.com/Microsoft/Cascadia-Code

* Ferramentas de build (nativo) para Visual Studio 2019
> https://visualstudio.microsoft.com/pt-br/downloads/#build-tools-for-visual-studio-2019

* cURL
> https://curl.haxx.se

* Emacs
> https://www.gnu.org/software/emacs

* Neovim
> https://neovim.io
