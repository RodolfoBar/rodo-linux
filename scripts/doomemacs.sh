#!/usr/bin/env bash

clear

echo "



----------------
DOOM EMACS SETUP
----------------



"

CONFIG_DIR=$HOME/.config/emacs

sudo pacman -S --needed --noconfirm git emacs ripgrep fd

if [[ -d $CONFIG_DIR ]]; then
    rm -rf $CONFIG_DIR
fi

git clone https://github.com/hlissner/doom-emacs $CONFIG_DIR

pushd $CONFIG_DIR
bash ./bin/doom.sh install
popd

sleep 1
