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
