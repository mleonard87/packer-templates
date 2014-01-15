#!/bin/sh

if [ x"$UEK" = "xno" ]; then
  yum -y install kernel-headers-$(uname -r) kernel-devel-$(uname -r) make gcc
else
  yum -y install kernel-uek-headers-$(uname -r) kernel-uek-devel-$(uname -r) make gcc
fi

VBOX_VERSION=$(cat /home/vagrant/.vbox_version)
mount -o loop,ro /home/vagrant/VBoxGuestAdditions_$VBOX_VERSION.iso /mnt
sh /mnt/VBoxLinuxAdditions.run --nox11
umount /mnt
rm /home/vagrant/VBoxGuestAdditions_$VBOX_VERSION.iso

# EOF
