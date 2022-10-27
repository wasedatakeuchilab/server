#! /usr/bin/env bash

set -euC
set -o pipefail
set -x

UPGRADE_LOG_FILE="/var/log/cron/apt-upgrade.log"
AUTOREMOVE_LOG_FILE="/var/log/cron/apt-autoremove.log"

export DEBIAN_FRONTEND=noninteractive
sudo apt-get update
sudo apt-upgrade -y | tee -a "$UPGRADE_LOG_FILE"
sudo apt-get autoremove -y | tee -a "$AUTOREMOVE_LOG_FILE"
