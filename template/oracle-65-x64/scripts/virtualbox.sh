#!/bin/bash

EXCLUDE=""
PACKAGES="dkms make gcc"
if [ x"$UEK" = "xno" ]; then
  EXCLUDE="$EXCLUDE --exclude=\"kernel-uek-*\""
  PACKAGES="$PACKAGES kernel-headers-$(uname -r) kernel-devel-$(uname -r)"
else
  PACKAGES="$PACKAGES kernel-uek-headers-$(uname -r) kernel-uek-devel-$(uname -r)"
fi
echo yum -y install $EXCLUDE $PACKAGES
yum -y install $EXCLUDE $PACKAGES

VBOX_VERSION=$(cat /home/vagrant/.vbox_version)
mount -o loop,ro "/home/vagrant/VBoxGuestAdditions_${VBOX_VERSION}.iso" /mnt
sh /mnt/VBoxLinuxAdditions.run --nox11
umount /mnt
rm "/home/vagrant/VBoxGuestAdditions_${VBOX_VERSION}.iso"
