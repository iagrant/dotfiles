#!/bin/bash

git clone https://aur.archlinux.org/package-query.git
git clone https://aur.archlinux.org/yaourt.git
for pkg in package-query yaourt; do
    cd $pkg
    makepkg -si
    cd ..
    rm -r $pkg
done
