#!/usr/bin/env bash

set -e

echo "



----------------------
i3 Desktop Environment
----------------------



"

PACKAGES_DIR="$HOME/Repos/rodo-linux/package-lists"

# {{{ Graphics Drivers
# if [[ ! -z $(lspci | grep VGA | grep NVIDIA) ]]; then
# 	sudo pacman -S --noconfirm --needed nvidia-open-dkms nvidia-settings
# elif [[ ! -z $(lspci | grep VGA) ]]; then
# 	sudo pacman -S --noconfirm --needed 
# fi
# }}}

# {{{ i3 packages
for line in $(cat $PACKAGES_DIR/i3.txt); do
	sudo pacman -S --noconfirm --needed $line
done
# }}}

# {{{ i3 yay packages
yay -S --noconfirm --needed picom-simpleanims-git
# }}}

sleep 1
