#!/usr/bin/env bash

echo "



------------
GAMING SETUP
------------



"

if [[ ! -z $(lspci | grep VGA | grep nvidia) ]]; then
    sudo pacman -S --noconfirm --needed nvidia-utils lib32-nvidia-utils
fi

sudo pacman -S --noconfirm --needed ttf-liberation steam

sleep 1
