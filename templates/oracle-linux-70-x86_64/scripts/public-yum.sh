#!/bin/bash

yum -y install yum-utils
yum-config-manager --enable ol7_optional_latest
yum-config-manager --disable epel
