#!/usr/bin/env bash

set -e

SCRIPTS_DIR="$HOME/Repos/rodo-linux/scripts"

bash $SCRIPTS_DIR/essentials.sh
bash $SCRIPTS_DIR/dotfiles.sh
bash $SCRIPTS_DIR/development.sh
bash $SCRIPTS_DIR/flatpak.sh
bash $SCRIPTS_DIR/doomemacs.sh
bash $SCRIPTS_DIR/printers.sh
bash $SCRIPTS_DIR/i3.sh
bash $SCRIPTS_DIR/desktopapps.sh
bash $SCRIPTS_DIR/bluetooth.sh
bash $SCRIPTS_DIR/passwords.sh
bash $SCRIPTS_DIR/partition.sh
bash $SCRIPTS_DIR/steam.sh

