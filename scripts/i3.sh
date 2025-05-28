#!/usr/bin/env bash

set -e

echo "



----------------------
i3 Desktop Environment
----------------------



"

PACKAGES_DIR="$HOME/Repos/rodo-linux/package-lists"

# {{{ i3 packages
for line in $(cat $PACKAGES_DIR/i3.txt); do
	sudo pacman -S --noconfirm --needed $line
done
# }}}

# {{{ i3 yay packages
yay -S --noconfirm --needed picom-simpleanims-git
# }}}

sleep 1
