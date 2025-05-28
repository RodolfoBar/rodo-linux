#!/usr/bin/env bash

set -e

clear

echo "



----------
ESSENTIALS
----------



"

PACKAGES_DIR="$HOME/Repos/rodo-linux/package-lists"
# {{{ Essential Packages
for line in $(cat $HOME/essentials.txt); do
	sudo pacman -S --noconfirm --needed $line
done
# }}}

# {{{ CPU Microcode
if [[ ! -z $(lscpu | grep "Model name" | grep AMD) ]]; then
	sudo pacman -S --noconfirm --needed amd-ucode
fi

if [[ ! -z $(lscpu | grep "Model name" | grep AMD) ]]; then
	sudo pacman -S --noconfirm --needed intel-ucode
fi
# }}}

# {{{ Graphics Drivers
# if [[ ! -z $(lspci | grep VGA | grep NVIDIA) ]]; then
# 	sudo pacman -S --noconfirm --needed nvidia-open-dkms nvidia-settings
# elif [[ ! -z $(lspci | grep VGA) ]]; then
# 	sudo pacman -S --noconfirm --needed 
# fi
# }}}

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

sleep 1
