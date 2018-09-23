#!/bin/bash
systemctl start dhcpcd
systemctl enable dhcpcd
timedatectl set-ntp true

./partitons.sh
pacstrap /mnt base base-devel
genfstab -U /mnt >> /mnt/etc/fstab

arch-chroot /mnt
#Time Stuff
./timelocal.sh
#setting up host and root pass
./hostsPass.sh
#install grub bootloader and reboot
./grubinstall.sh
#xorg and i3 install
./xorgi3
reboot
