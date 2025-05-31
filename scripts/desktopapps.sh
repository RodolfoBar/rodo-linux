#!/usr/bin/env bash

clear

echo "



------------
DESKTOP APPS
------------



"

PACKAGES_DIR=$HOME/Repos/rodo-linux/package-lists

for line in $(cat $PACKAGES_DIR/desktopapps.txt); do
    sudo pacman -S --noconfirm --needed $line
done

if [[ ! -d $HOME/.config ]]; then
    mkdir $HOME/.config
fi

if [[ ! -d $HOME/.config/discord ]]; then
    mkdir $HOME/.config/discord
fi

echo '{
  "BACKGROUND_COLOR": "#2c2d32",
  "IS_MAXIMIZED": true,
  "IS_MINIMIZED": false,
  "WINDOW_BOUNDS": {
    "x": 961,
    "y": 557,
    "width": 959,
    "height": 1052
  },
  "SKIP_HOST_UPDATE": true,
  "chromiumSwitches": {}
}' > $HOME/.config/discord/settings.json

if type -p yay &>/dev/null; then
    yay -S --noconfirm --needed zen-browser-bin google-chrome
else
    # {{{ yay install
    if [[ ! -d $HOME/Software ]]; then
        mkdir $HOME/Software
    fi

    if [[ ! -d $HOME/Software/yay ]]; then
        git clone https://aur.archlinux.org/yay.git $HOME/Software/yay
        pushd $HOME/Software/yay
        makepkg -si
        popd
    fi
    # }}}
fi

sleep 1
