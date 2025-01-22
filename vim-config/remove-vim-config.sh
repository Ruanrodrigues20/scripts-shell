#!/bin/bash

# Função para desinstalar o NPM e os pacotes
removeNPM(){
    # Remove o npm e nodejs
    sudo apt remove --purge -y npm nodejs
    
    # Remove pacotes desnecessários
    sudo apt autoremove -y
    
    # Remove pacotes globais do npm
    sudo npm uninstall -g $(npm ls -g --depth=0 --parseable | sed 's/.*\///')
    
    # Remove diretórios relacionados ao npm e nodejs
    sudo rm -rf /usr/local/lib/node_modules
    sudo rm -rf /usr/local/bin/npm
    sudo rm -rf /usr/local/bin/npx
}



uninstallNPM(){
    echo "Desinstalando pacotes NPM..."
    sudo npm uninstall -g pyright
    sudo npm uninstall -g bash-language-server
    sudo apt remove -y nodejs npm
}

# Função para restaurar o vimrc para o original
restoreVimrc(){
    echo "Restaurando o vimrc original..."
    sudo rm -rf ~/.vim*
    sudo rm -rf /root/.vim*
}

# Função para remover completamente o Vim
removeVim(){
    echo "Removendo o Vim..."
    sudo apt-get purge -y vim vim-common vim-runtime vim-tiny vim-gui-common vim-nox
    sudo apt-get autoremove -y
}

# Função para instalar o Vim novamente
installVim(){
    echo "Instalando o Vim..."
    sudo apt install -y vim
}

# Função principal para desinstalar e reinstalar
reinstallVim(){
    removeVimPlug
    removeNPM
    restoreVimrc
    removeVim
    restoreVimrc
    installVim
}

# Chama a função de reinstalação
reinstallVim

