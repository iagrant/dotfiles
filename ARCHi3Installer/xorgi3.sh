#!/bin/bash

echo y; | pacman -S xorg-server xf86-video-vesa xorg-xinit i3wm i3status dmenu gnome-terminal git
./yaourt.sh
#yaourt -S ttf-ms-fonts polybar gtk2 gtk3 lxappearance vertex-themes
#yaourt -Syu -devel -a
