#!/usr/bin/env bash

clear

echo "



------------------
DEVELOPEMENT SETUP
------------------



"

# {{{ Packages
PACKAGES_DIR="$HOME/Repos/rodo-linux/package-lists"

for line in $(cat $PACKAGES_DIR/development.txt); do
    sudo pacman -S --needed --noconfirm $line
done
# }}}

# {{{ NVM
if [[ -z $(cat $HOME/.bashrc | grep nvm) ]]; then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
fi
# }}}

sleep 1
