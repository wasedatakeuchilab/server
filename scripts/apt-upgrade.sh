#! /usr/bin/env bash

set -euC
set -o pipefail
set -x

export DEBIAN_FRONTEND=noninteractive
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get autoremove -y
