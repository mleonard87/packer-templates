#!/bin/bash

EXCLUDE=""
PACKAGES="bzip2 make gcc"
PACKAGES="$PACKAGES kernel-uek-headers-$(uname -r)"
PACKAGES="$PACKAGES kernel-uek-devel-$(uname -r)"

#echo yum -y install $EXCLUDE $PACKAGES
yum -y install $EXCLUDE $PACKAGES

VBOX_VERSION=$(cat /home/vagrant/.vbox_version)
mount -o loop,ro "/home/vagrant/VBoxGuestAdditions_${VBOX_VERSION}.iso" /mnt
sh /mnt/VBoxLinuxAdditions.run --nox11
umount /mnt
rm "/home/vagrant/VBoxGuestAdditions_${VBOX_VERSION}.iso"
