#!/usr/bin/env bash
# Copyright (c) Erlimar Silva Campos. Todos os direitos reservados.
# Licenciado sobe a Apache License, Version 2.0. Mais informações da licença em LICENSE.

set -ou pipefail

uid=$(id -u)
packages_to_install=()

if ! lsb_release --id > /dev/null 2>&1; then
    packages_to_install+=( "lsb-release" )
fi

if ! neofetch > /dev/null 2>&1; then
    packages_to_install+=( "neofetch" )
fi

if ! nvim --version > /dev/null 2>&1; then
    packages_to_install+=( "neovim" )
fi

if ! python3 --version > /dev/null 2>&1; then
    packages_to_install+=( "python3" )
fi

if ! pip3 --version > /dev/null 2>&1; then
    packages_to_install+=( "python3-pip" )
fi

if ! emacs --version > /dev/null 2>&1; then
    packages_to_install+=( "emacs" )
fi

if ! tree > /dev/null 2>&1; then
    packages_to_install+=( "tree" )
fi

if ! htop > /dev/null 2>&1; then
    packages_to_install+=( "htop" )
fi

do_show_not_installed() {
    if [ "${#packages_to_install[@]}" -eq "0" ]; then
        echo "Todos os pacotes já estão instalados!"
    else
        echo "Pacotes não instalados:"

        for p in ${packages_to_install[@]}; do
            echo "- ${p}"
        done
    fi
}

do_install_packages() {
    if [ "${#packages_to_install[@]}" -eq "0" ]; then
        echo "Todos os pacotes já estão instalados!"
    else
        if [ "${uid}" -ne "0" ]; then
            echo "ERRO: Você precisa executar o script como root para instalar os pacotes"
            exit 1
        else
            echo "Instalando pacotes..."
            apt update
            apt install ${packages_to_install[@]}
        fi
    fi
}

install_packages=false

while [ $# -ne 0 ]; do
    name="$1"
    case "$name" in
        -i|--install)
            install_packages=true
            ;;
        -?|--?|-h|--help)
            script_name="$(basename "$0")"
            echo "My developer environment"
            echo ""
            echo "Usage: $script_name"
            echo "       $script_name -?|--?|-h|--help"
            echo "       $script_name --install"
            echo ""
            echo "$script_name is a simple script command line for init my developer environment."
            echo ""
            echo "Options:"
            echo "  -i,--install      Do install not installed packages"
            exit 0
            ;;
        *)
            echo "Unknow argument \`$name\`"
            exit 1
            ;;
    esac
    
    shift
done

if [ "$install_packages" = true ]; then
    do_install_packages
else
    do_show_not_installed
fi

