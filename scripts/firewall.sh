#!/usr/bin/env bash

clear

echo "



--------------
FIREWALL SETUP
--------------



"

sudo pacman -S --needed --noconfirm ufw

if [[ $? == 0 ]]; then
    sudo ufw default deny incoming
    sudo ufw default allow outgoing
    sudo ufw allow 22

    clear

    echo "




"

    read -p "Would you like to set an alternate SSH port? (Empty to skip): " sshPort

    if [[ ! -z $sshPort && $sshPort =~ ^[0-9]+$ ]]; then
        sudo ufw allow $sshPort
    fi

    sudo systemctl enable ufw.service
    sudo ufw enable
fi

sleep 1
