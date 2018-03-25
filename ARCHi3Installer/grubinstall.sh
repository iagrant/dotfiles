#!/bin/bash

pacman -S grub
grubinstall /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
exit
umount -R /mnt
