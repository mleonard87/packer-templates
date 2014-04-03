#!/bin/bash

# Clean up the network interfaces
rm /etc/udev/rules.d/70-persistent-net.rules
mkdir /etc/udev/rules.d/70-persistent-net.rules
rm /lib/udev/rules.d/75-persistent-net-generator.rules
rm -rf /dev/.udev/
sed -i "/^HWADDR/d" /etc/sysconfig/network-scripts/ifcfg-eth0

# Clean up yum
#yum -y erase gtk2 libX11 hicolor-icon-theme avahi freetype bitstream-vera-fonts
yum -y clean all

# Remove stray files in /tmp
rm -rf /tmp/*

# Zero free space so the final image is smaller
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY
