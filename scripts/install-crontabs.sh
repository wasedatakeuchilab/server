#! /usr/bin/env bash

set -euC
set -o pipefail
set -x

SCRIPTS_DIR=$(dirname "$0")

sudo crontab "$SCRIPTS_DIR"/../crontabs/root

# wakealarm
sudo cp "$SCRIPTS_DIR"/wakealarm.sh /usr/local/bin/
sudo chmod 544 /usr/local/bin/wakealarm.sh
sudo chown root:root /usr/local/bin/wakealarm.sh

# apt upgrade
sudo cp "$SCRIPTS_DIR"/apt-upgrade.sh /usr/local/bin/
sudo chmod 544 /usr/local/bin/apt-upgrade.sh
sudo chown root:root /usr/local/bin/apt-upgrade.sh
