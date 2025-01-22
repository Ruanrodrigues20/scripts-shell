#!/bin/bash

# Função para instalar o Vim Plug
instalVimPlug(){
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

# Função para instalar pacotes NPM necessários
intallNPM(){
    sudo apt install -y curl nodejs npm
    sudo npm install -g pyright
    sudo npm install -g bash-language-server
}

# Função para copiar o arquivo de configuração .vimrc para o usuário e o root
copVimrcHome(){
    sudo cp ./config.txt /root/.vimrc # Para o root
}

# Função para rodar o comando de instalação de plugins no Vim
installPlugins(){
    # Para o root
    sudo vim +PlugInstall +qall
}


configVimUser(){
    sudo -k

    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    cp ./config.txt $HOME/.vimrc

    vim +PlugInstall +qall 

    
}


main(){
    sudo -v
    instalVimPlug
    intallNPM
    copVimrcHome
    installPlugins
    sudo -k
    configVimUser
}


main

