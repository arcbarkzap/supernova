#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

# Clone the repo
git clone https://github.com/Lxtharia/minegrub-world-sel-theme.git
cd ./minegrub-world-sel-theme
cp -ruv ./minegrub-world-selection /boot/grub/themes/
echo "GRUB_THEME=/boot/grub/themes/minegrub-world-selection/theme.txt" >> /etc/default/grub
grub-mkconfig -o /boot/grub/grub.cfg