#!/usr/bin/env bash

die () {
	echo "



--------------
ERROR: EXITING
--------------



"
}

clear

echo "


--------
DOTFILES
--------


"

sleep 100

DOTS_DIR="$HOME/Repos/dotfiles"

if [[ ! -d $HOME/Repos ]]; then
	mkdir $HOME/Repos
fi

if [[ ! -d $DOTS_DIR ]]; then
	i=0
	while [[ $i == 0 ]]; do
		read -p "Enter a dotfiles repository: " dotsrepo
		git clone $dotsrepos $DOTS_DIR
		if [[ $? == 0 ]]; then
			break
		fi
		if [[ $? != 0 ]]; then
			die
			exit 0
		fi
	done

	if [[ ! -d $HOME/.config ]]; then
		mkdir $HOME/.config
	fi

	for file in $(ls $DOTS_DIR); do
		rm -rf "$HOME/.config/$file"
		ln -s "$DOTS_DIR$file" "$HOME/.config/$file"
	done

	echo "source $HOME/.config/bash/my_bashrc.sh" >> $HOME/.bashrc

else
	echo "Error: dotfiles file exists"
fi
