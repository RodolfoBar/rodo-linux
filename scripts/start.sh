#!/usr/bin/env bash

set -e

i=0

SCRIPTS_DIR="$HOME/Repos/rodo-linux/scripts"

while [[ $i == 0 ]]; do
    clear
    read -p "


What would you like to install?


1. Just Essentials
2. Dotfiles
3. Development Environment
4. Flatpak
5. Doom Emacs
6. Printers
7. i3 + Xorg
8. Desktop Apps
9. Bluetooth
10. Password Manager
11. Partition Manager
12. Steam
13. All


enter q to quit


" response

    if [[ $response == 'q' ]]; then
        clear
        echo "




---------------
EXITING PROGRAM
---------------




"
        exit 0
    fi

    if [[ $response < 13 && $response > 0 ]]; then
        case "$response" in
            1) bash $SCRIPTS_DIR/essentials.sh ;;
            2) bash $SCRIPTS_DIR/dotfiles.sh ;;
            3) bash $SCRIPTS_DIR/development.sh ;;
            4) bash $SCRIPTS_DIR/flatpak.sh ;;
            5) bash $SCRIPTS_DIR/doomemacs.sh ;;
            6) bash $SCRIPTS_DIR/printers.sh ;;
            7) bash $SCRIPTS_DIR/i3.sh ;;
            8) bash $SCRIPTS_DIR/desktopapps.sh ;;
            9) bash $SCRIPTS_DIR/bluetooth.sh ;;
            10) bash $SCRIPTS_DIR/passwords.sh ;;
            11) bash $SCRIPTS_DIR/partition.sh ;;
            12) bash $SCRIPTS_DIR/steam.sh ;;
            13) bash $SCRIPTS_DIR/all.sh ;;
            *)
                clear
                echo "



----------------------------
NOT A VALID OPTION TRY AGAIN
----------------------------



" ;;
        esac
    fi
done
