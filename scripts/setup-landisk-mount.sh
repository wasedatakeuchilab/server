#! /usr/bin/env bash

set -euC
set -o pipefail

MOUNT_POINT="/mnt/landisk"
SMBCREDS_FILEPATH="/root/smbcreds"
LANDISK_IPADDRESS="192.168.0.10"

if [ ! -d "$MOUNT_POINT" ]; then
    sudo mkdir -p "$MOUNT_POINT"
fi

{
    OPTIONS="credentials=$SMBCREDS_FILEPATH,nosuid,noexec,nodev,rw,vers=1.0"
    echo "//$LANDISK_IPADDRESS/disk $MOUNT_POINT cifs $OPTIONS"
} | sudo tee -a /etc/fstab

echo "LANDISK_MOUNT_POINT=$MOUNT_POINT" | sudo tee -a /etc/environment
