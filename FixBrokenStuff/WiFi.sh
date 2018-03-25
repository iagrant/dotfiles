#!/bin/bash
systemctl stop dhcpcd
systemctl start dhcpcd
systemctl enable dhcpcd
systemctl stop NetworkManager
systemctl start NetworkManager
systemctl enable NetworkManager
