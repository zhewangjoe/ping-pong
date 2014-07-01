#!/bin/bash

read -r nickname </var/emulab/boot/nickname
host=$(echo $nickname | cut -f1 -d.)
echo $host > /etc/hostname
/bin/hostname -F /etc/hostname

