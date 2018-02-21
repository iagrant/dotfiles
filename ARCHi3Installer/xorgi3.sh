#!/bin/bash

echo y; | pacman -S xorg-server xf86-video-vesa xorg-xinit i3wm i3status dmenu gnome-terminal git
git clone https://aur.archlinux.org/package-query.git
git clone https://aur.archlinux.org/yaourt.git
for pkg in package-query yaourt; do
    cd $pkg
    makepkg -si
    cd ..
    rm -r $pkg
done
#yaourt -S ttf-ms-fonts polybar gtk2 gtk3 lxappearance vertex-themes
#yaourt -Syu -devel -a
