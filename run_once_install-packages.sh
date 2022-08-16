#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

package_installed()
{
    local package=$1
    if dpkg-query -s $package > /dev/null 2>&1; then
        return 0  # true
    else
        return 1
    fi    
}

install_package()
{
    local package=$1
    if package_installed $package; then
        echo "Package $package is already installed"
    else
        echo "Installing $package"
        sudo apt install -y $package
    fi    
}

ppa_installed()
{
    local ppa=$1
    if ! grep -q "^deb .*$ppa" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
        return 1 # false
    else
        return 0 # true
    fi
}

install_ppa()
{
    local ppa=$1
    if ppa_installed $ppa; then
        echo "PPA $ppa is already installed"
    else
        echo "Adding ppa $ppa"
        sudo add-apt-repository ppa:$ppa
    fi
}

executable_in_path()
{
    local exetest=$1
    if hash $exetest 2>/dev/null; then
        return 0 #true
    else
        return 1 # false
    fi
}

install_npm_package()
{
    local exetest=$1
    local package=$2
    if executable_in_path $exetest; then
        echo "NPM package $package is already installed"
    else
        echo "Installing npm package $package"
        npm install --location=global $package 
    fi
}

install_ppa neovim-ppa/stable

install_package ripgrep
install_package neovim 
install_package zsh 
install_package git 
install_package php-cli
install_package fzf 
install_package wget 
install_package make 
install_package fonts-powerline
install_package xsel 


mkdir -p $HOME/opt

if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

if [ -d "$HOME/.npm" ]; then
    echo "Removing old .npm directory..."
    rm -rf "$HOME/.npm"
fi

if [ -d "$HOME/.nvm" ]; then
    echo "Removing old .nvm directory..."
    rm -rf "$HOME/.nvm"
fi

if [ ! -d "$HOME/opt/n" ]; then
    echo "Installing n"
    curl -L https://bit.ly/n-install | N_PREFIX=$HOME/opt/n bash
    export N_PREFIX="$HOME/opt/n"
    export PATH="$PATH:$N_PREFIX/bin"
fi

install_npm_package intelephense intelephense
install_npm_package tsc typescript
install_npm_package typescript-language-server typescript-language-server 
install_npm_package bw @bitwarden/cli 
install_npm_package yarn yarn
install_npm_package pnpm pnpm
install_npm_package bash-language-server bash-language-server 
install_npm_package vscode-eslint-language-server vscode-langservers-extracted 

if [ ! -d "$HOME/.local/share/nvim/site/pack/packer/" ]; then
    git clone --depth 1 https://github.com/wbthomason/packer.nvim\
        ~/.local/share/nvim/site/pack/packer/start/packer.nvim
fi

if [ ! -f "$HOME/.config/Bitwarden CLI/data.json" ]; then
    echo "Setting up bitwarden"
    read -p "Bitwarden server: " bwserver
    bw config server $bwserver
    bw login
fi

if ! executable_in_path "composer"; then
    echo "Installing composer..."
    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
    php composer-setup.php --install-dir=$HOME/bin --filename=composer 
    php -r "unlink('composer-setup.php');"
fi

# if [ ! -d "$HOME/opt/phpactor" ]; then
#     echo "Installing phpactor..."
#     mkdir -p $HOME/opt
#     cd $HOME/opt
#     git clone git@github.com:phpactor/phpactor
#     cd phpactor
#     composer install
#     ln -s $HOME/opt/phpactor/bin/phpactor $HOME/bin/phpactor
# fi

if [ ! -d "$HOME/opt/lua-language-server" ]; then
    mkdir -p $HOME/opt/lua-language-server
    cd $HOME/opt/lua-language-server
    wget https://github.com/sumneko/lua-language-server/releases/download/3.5.2/lua-language-server-3.5.2-linux-x64.tar.gz
    tar xzvf lua-language-server-3.5.2-linux-x64.tar.gz
    rm -f lua-language-server-3.5.2-linux-x64.tar.gz
fi

