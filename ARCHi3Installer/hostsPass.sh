#!/bin/bash

(
echo arch;
) | cat > /etc/hostname

(
echo 127.0.0.1      localhost.localdomain   localhost;
echo ::1      localhost.localdomain   localhost;
echo 127.0.0.1      arch.localdomain   arch;
) | cat > /etc/hosts

(
echo admin123;
) | passwd
