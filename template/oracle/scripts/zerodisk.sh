#!/bin/sh

dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY

# Repeat from cleanup.sh to delete this script, too
rm -rf /tmp/*

# EOF
