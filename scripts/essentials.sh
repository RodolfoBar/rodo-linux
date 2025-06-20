#!/usr/bin/env bash

set -e

clear

echo "



----------
ESSENTIALS
----------



"

PACKAGES_DIR="$HOME/Repos/rodo-linux/package-lists"
FONT_DIR="$HOME/.local/share/fonts"

# {{{ Essential Packages
for line in $(cat $PACKAGES_DIR/essentials.txt); do
	sudo pacman -S --noconfirm --needed $line
done
# }}}

# {{{ CPU Microcode
if [[ ! -z $(lscpu | grep "Model name" | grep AMD) ]]; then
	sudo pacman -S --noconfirm --needed amd-ucode
fi

if [[ ! -z $(lscpu | grep "Model name" | grep INTEL) ]]; then
	sudo pacman -S --noconfirm --needed intel-ucode
fi
# }}}

# {{{ Graphics Drivers
# if [[ ! -z $(lspci | grep VGA | grep NVIDIA) ]]; then
# 	sudo pacman -S --noconfirm --needed nvidia-open-dkms nvidia-settings nvidia-utils lib32-nvidia-utils
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

# {{{ Install Fonts
if [[ ! -d $HOME/.local ]]; then
	mkdir $HOME/.local
fi

if [[ ! -d $HOME/.local/share ]]; then
	mkdir $HOME/.local/share
fi

if [[ ! -d $HOME/.local/share/fonts ]]; then
	mkdir $HOME/.local/share/fonts
fi

if [[ -d $FONT_DIR/JetBrainsMono ]]; then
	rm -rf $FONT_DIR/JetBrainsMono
fi
mkdir $FONT_DIR/JetBrainsMono
pushd $FONT_DIR/JetBrainsMono
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.zip
unzip JetBrainsMono.zip
popd

if [[ ! -d $FONT_DIR/opentype ]]; then
	mkdir $FONT_DIR/opentype
fi

if [[ -d $FONT_DIR/opentype/DepartureMono ]]; then
	rm -rf $FONT_DIR/opentype/DepartureMono
fi
mkdir $FONT_DIR/opentype/DepartureMono
pushd $FONT_DIR/opentype/DepartureMono
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/DepartureMono.zip
unzip DepartureMono.zip
popd

if [[ -d $FONT_DIR/CascadiaCode ]]; then
	rm -rf $FONT_DIR/CascadiaCode
fi
mkdir $FONT_DIR/CascadiaCode
pushd $FONT_DIR/CascadiaCode
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/CascadiaCode.zip
unzip CascadiaCode.zip
popd

if [[ -d $FONT_DIR/CascadiaMono ]]; then
	rm -rf $FONT_DIR/CascadiaMono
fi
mkdir $FONT_DIR/CascadiaMono
pushd $FONT_DIR/CascadiaMono
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/CascadiaMono.zip
unzip CascadiaMono.zip
popd
# }}}

sleep 1
