#!/bin/bash

# Use Red Hat Compatible Kernel (RHCK) which is identical to the one shipped in
# Red Hat Enterprise Linux.

kernel_menuentry=`cat /boot/grub2/grub.cfg | grep ^menuentry | cut -d "'" -f2 | grep -v "uek\|rescue"`
kernel_version=`echo $kernel_menuentry | cut -d" " -f6,6`

# Rebuild modules for the RHCK.
sudo yum -y install kernel-devel-$kernel_version
sudo dkms autoinstall -k $kernel_version

echo "Setting default kernel to: $kernel_menuentry"
sudo grub2-set-default "$kernel_menuentry"