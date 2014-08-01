#!/bin/bash

# Use non-UEK kernel
if [ x"$UEK" = "xno" ]; then
    sed -i 's/^default=0/default=1/' /boot/grub/grub.conf
    reboot
    sleep 60
fi
