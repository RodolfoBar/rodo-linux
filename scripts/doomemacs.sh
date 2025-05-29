#!/usr/bin/env bash

CONFIG_DIR=$HOME/.config/emacs

sudo pacman -S --needed --noconfirm git emacs ripgrep fd

git clone https://github.com/hlissner/doom-emacs $CONFIG_DIR

pushd $CONFIG_DIR
bash ./bin/doom.sh install
popd
