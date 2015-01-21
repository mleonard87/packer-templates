#!/bin/bash

# Use the Oracle Unbreakable Kernel (default for OL7).

kernel_menuentry=`cat /boot/grub2/grub.cfg | grep ^menuentry | cut -d "'" -f2 | grep uek`
echo "Setting default kernel to: $kernel_menuentry"
sudo grub2-set-default "$kernel_menuentry"