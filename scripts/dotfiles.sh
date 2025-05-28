#!/usr/bin/env bash

clear

echo "


--------
DOTFILES
--------


"

die () {
	echo "



--------------
ERROR: EXITING
--------------



"
	exit 0
}


if [[ ! -d $HOME/Repos ]]; then
	mkdir $HOME/Repos
fi

if [[ ! -d $HOME/Repos/dotfiles ]]; then
	while ; do
		read -p "Enter a dotfiles repository: "
		git clone $IFS dotfiles
		if [[ $? == 0 ]]; then
			break
		fi
		if [[ $? != 0 ]]; then
			die
		fi
	done

	if [[ ! -d $HOME/.config ]]; then
		mkdir $HOME/.config
	fi

	for file in $(ls $HOME/Repos/dotfiles); do
		rm -rf $HOME/.config/$file
		ln -s $HOME/Repos/dotfiles/$file $HOME/.config/$file
	done

	echo "source $HOME/.config/bash/my_bashrc.sh" >> $HOME/.bashrc

else
	echo "Error: dotfiles file exists"
fi
