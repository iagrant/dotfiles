#!/bin/bash
ln -sf /usr/share/zoneinfo/America/Los_Angeles /etc/localtime
hwclock --systohc
rm /etc/locale.conf
(
echo LANG=en_US.UTF-8;
) | cat > /etc/locale.conf
