#!/bin/bash

curl https://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm >> epel-release-7-5.noarch.rpm
chmod 755 epel-release-7-5.noarch.rpm
yum -y install epel-release-7-5.noarch.rpm
yum -y install dkms
rm -f epel-release-7-5.noarch.rpm