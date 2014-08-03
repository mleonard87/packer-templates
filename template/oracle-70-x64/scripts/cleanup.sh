#!/bin/bash

# Clean up the network interfaces
rm /etc/udev/rules.d/70-persistent-net.rules
sed -i "/^UUID/d"   /etc/sysconfig/network-scripts/ifcfg-enp0s3
sed -i "/^HWADDR/d" /etc/sysconfig/network-scripts/ifcfg-enp0s3

# Clean up YUM cache
yum -y clean all

# Remove stray files in /tmp
rm -rf /tmp/*

# Empty log files
find /var/log -type f | while read f; do echo -ne "" > $f; done;

# Zero free space so the final image is smaller
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY
