#!/bin/bash
(
echo o; #new dos partition table
#boot
echo n; #new partiion
echo p; #primary partiton
echo  ;#Accepts default for Partition #
echo  ;#Accepts default for 1st sector
echo +512M; #Last sector location
#swap
echo n; #new partiion
echo p; #primary partiton
echo  ;#Accepts default for Partition #
echo  ;#Accepts default for 1st sector
echo +2G; #Last sector location
echo n; #new partiion
#root partiton
echo p; #primary partiton
echo  ;#Accepts default for Partition #
echo  ;#Accepts default for 1st sector
echo  ;#Accepts default for last sector
echo q;
) | sudo fdisk /dev/sda

#format boot to vfat
mkfs.vfat /dev/sda1
#format root to ext4
mkfs.ext4 /dev/sda3
#format swap to swap
mkfs.swap /dev/sda2
#enable swap
swapon /dev/sda2

#mount root partition to mount
mount /dev/sda3 /mnt
mkdir /mnt/boot
mount /dev/sda1 /mnt/boot
