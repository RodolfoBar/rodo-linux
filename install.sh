#!/usr/bin/env bash

sudo pacman -S --needed --noconfirm git

if [[ ! -d $HOME/Repos ]]; then
	mkdir $HOME/Repos

	pushd $HOME/Repos
	git clone https://github.com/Rodolfo/rodo-linux.git
	popd

	if [[ $? == 0 ]]; then
		pushd $HOME/Repos/rodo-linux
		bash ./scripts/start.sh
		popd
		clear
		echo "


-------
SUCCESS
-------


"
exit 0
	fi
	echo "


------
FAILED
------


"
	exit 1
fi
echo "


------
FAILED
------


"
exit 1
