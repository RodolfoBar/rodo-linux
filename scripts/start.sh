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
4. Printers
5. Flatpak
6. i3 + Xorg
7. Doom Emacs
8. Browsers
9. Graphical File Manager
10. Terminal File Manager
11. Audio Control Software
12. Bluetooth
13. Screenshot Utility
14. KeepassXC
15. Nextcloud
16. PDF Reader
17. Partition Manager
18. Discord
19. All


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

    if [[ $response <= 19 && $response >= 1 ]]; then
        case "$response" in
            1) bash $SCRIPTS_DIR/essentials.sh ;;
            2) bash $SCRIPTS_DIR/dotfiles.sh ;;
            3) bash $SCRIPTS_DIR/development.sh ;;
            4) bash $SCRIPTS_DIR/printers.sh ;;
            5) bash $SCRIPTS_DIR/flatpak.sh ;;
            6) bash $SCRIPTS_DIR/i3.sh ;;
            7) bash $SCRIPTS_DIR/doomemacs.sh ;;
            8) bash $SCRIPTS_DIR/browsersemacs.sh ;;
            9) bash $SCRIPTS_DIR/graphicalfilemanager.sh ;;
            10) bash $SCRIPTS_DIR/terminalfilemanager.sh ;;
            11) bash $SCRIPTS_DIR/audio.sh ;;
            12) bash $SCRIPTS_DIR/bluetooth.sh ;;
            13) bash $SCRIPTS_DIR/screenshot.sh ;;
            14) bash $SCRIPTS_DIR/keepassxc.sh ;;
            15) bash $SCRIPTS_DIR/nextcloud.sh ;;
            16) bash $SCRIPTS_DIR/pdf reader.sh ;;
            17) bash $SCRIPTS_DIR/partition.sh ;;
            18) bash $SCRIPTS_DIR/discord.sh ;;
            19) bash $SCRIPTS_DIR/all.sh ;;
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
