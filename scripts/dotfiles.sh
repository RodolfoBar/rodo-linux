#!/usr/bin/env bash

die () {
	clear
	echo "



--------------
ERROR: EXITING
--------------



"
	sleep 1
}

clear

echo "


--------
DOTFILES
--------


"

DOTS_DIR="$HOME/Repos/dotfiles"

if [[ ! -d $HOME/Repos ]]; then
	mkdir $HOME/Repos
fi

if [[ ! -d $DOTS_DIR ]]; then
	i=0
	while [[ $i == 0 ]]; do
		read -p "Enter a dotfiles repository: " dotsrepo
		git clone $dotsrepo $DOTS_DIR
		if [[ $? != 0 ]]; then
			die
			return 0
		fi
		break
	done

	if [[ ! -d $HOME/.config ]]; then
		mkdir $HOME/.config
	fi

	for file in $(ls $DOTS_DIR); do
		rm -rf "$HOME/.config/$file"
		ln -s "$DOTS_DIR/$file" "$HOME/.config/$file"
	done

	if [[ -z $( cat .bashrc | grep "source $HOME/.config/bash/my_bashrc.sh") ]]; then
		echo "source $HOME/.config/bash/my_bashrc.sh" >> $HOME/.bashrc
	fi
else
	echo "Error: dotfiles file exists"
fi

sleep 1
