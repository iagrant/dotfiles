#!/bin/bash
systemctl stop dhcpcd
systemctl start dhcpcd
systemctl stop NetworkManager
systemctl start NetworkManager
