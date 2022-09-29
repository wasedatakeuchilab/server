#! /usr/bin/env bash

set -euC
set -o pipefail
set -x

SCRIPTS_DIR=$(dirname "$0")

sudo crontab "$SCRIPTS_DIR"/../crontabs/root
sudo cp "$SCRIPTS_DIR"/../crontabs/cronlog.conf /etc/logrotate.d/
sudo chown root:root /etc/logrotate.d/cronlog.conf
if [ ! -d /var/log/cron ]; then
    sudo mkdir -p /var/log/cron
fi
sudo cp "$SCRIPTS_DIR"/wakealarm.sh /usr/bin/
sudo chmod 544 /usr/bin/wakealarm.sh
sudo chown root:root /usr/bin/wakealarm.sh
