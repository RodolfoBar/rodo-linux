#!/usr/bin/env bash

sudo pacman -S --needed --noconfirm git

if [[ ! -d $HOME/Repos ]]; then
	mkdir $HOME/Repos
fi

if [[ -d $HOME/Repos/rodo-linux ]]; then
	rm -rf $HOME/Repos/rodo-linux
fi

git clone https://github.com/Rodolfo/rodo-linux.git $HOME/Repos/rodo-linux

if [[ $? != 0 ]]; then
	echo "


------
FAILED
------


"
	exit 1
else
	bash $HOME/Repos/rodo-linux/scripts/start.sh
	echo "


-------
SUCCESS
-------


"
	exit 0
fi
