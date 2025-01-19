#!/bin/bash

# Função para exibir as opções do menu
show_menu() {
    echo -e "\n\e[34m=== Gerenciador de Atualizações ===\e[0m"
    echo "1) Listar todas as atualizações disponíveis"
    echo "2) Atualizar tudo (APT, Snap, Flatpak)"
    echo "3) Atualizar apenas APT"
    echo "4) Atualizar apenas Snap"
    echo "5) Atualizar apenas Flatpak"
    echo "6) Sair"
    echo -n "Escolha uma opção: "
}

# Função para listar atualizações disponíveis
list_updates() {
    echo -e "\n\e[34mListando atualizações disponíveis...\e[0m"
    
    echo -e "\n\e[33mAPT:\e[0m"
    sudo apt update 2>/dev/null | grep -E "^Instalável|pacotes" || echo "Nenhuma atualização disponível para APT."

    echo -e "\n\e[33mSnap:\e[0m"
    sudo snap refresh --list || echo "Nenhuma atualização disponível para Snap."

    echo -e "\n\e[33mFlatpak:\e[0m"
    sudo flatpak remote-ls --updates || echo "Nenhuma atualização disponível para Flatpak."
}

# Função para atualizar APT
update_apt() {
    echo -e "\n\e[34mAtualizando APT...\e[0m"
    sudo apt update && sudo apt upgrade -y
}

# Função para atualizar Snap
update_snap() {
    echo -e "\n\e[34mAtualizando Snap...\e[0m"
    sudo snap refresh
}

# Função para atualizar Flatpak
update_flatpak() {
    echo -e "\n\e[34mAtualizando Flatpak...\e[0m"
    sudo flatpak update -y
}

# Loop do menu
while true; do
    show_menu
    read -r option

    case $option in
        1)
            list_updates
            ;;
        2)
            update_apt
            update_snap
            update_flatpak
            echo -e "\n\e[32mTudo atualizado com sucesso!\e[0m"
            ;;
        3)
            update_apt
            echo -e "\n\e[32mAPT atualizado com sucesso!\e[0m"
            ;;
        4)
            update_snap
            echo -e "\n\e[32mSnap atualizado com sucesso!\e[0m"
            ;;
        5)
            update_flatpak
            echo -e "\n\e[32mFlatpak atualizado com sucesso!\e[0m"
            ;;
        6)
            echo -e "\n\e[34mSaindo...\e[0m"
            exit 0
            ;;
        *)
            echo -e "\n\e[31mOpção inválida. Tente novamente.\e[0m"
            ;;
    esac
done

