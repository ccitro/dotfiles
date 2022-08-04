#!/bin/bash

sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt install -y ripgrep neovim zsh git

if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

if [ ! -d "$HOME/.local/share/nvim/site/pack/packer/" ]; then
    git clone --depth 1 https://github.com/wbthomason/packer.nvim\
     ~/.local/share/nvim/site/pack/packer/start/packer.nvim
fi

npm install -g intelephense typescript typescript-language-server

mkdir -p $HOME/opt
if [ ! -d "$HOME/opt/lua-language-server" ]; then
    mkdir -p $HOME/opt/lua-language-server
    cd $HOME/opt/lua-language-server
    wget https://github.com/sumneko/lua-language-server/releases/download/3.5.2/lua-language-server-3.5.2-linux-x64.tar.gz
    tar xzvf lua-language-server-3.5.2-linux-x64.tar.gz
    rm -f lua-language-server-3.5.2-linux-x64.tar.gz
fi

