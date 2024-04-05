#! /usr/bin/env bash

set -euC
set -o pipefail
set -x

SCRIPTS_DIR=$(dirname "$0")

# Install packages
./"$SCRIPTS_DIR"/install-packages.sh

# Install docker
if [ -z "$(which docker)" ]; then
  ./"$SCRIPTS_DIR"/install-docker.sh
fi

# Install microk8s
if [ -z "$(which microk8s)" ]; then
  ./"$SCRIPTS_DIR"/install-microk8s.sh
fi

# Install crontab
./"$SCRIPTS_DIR"/install-crontabs.sh

# Install hooks
cp -r "$SCRIPTS_DIR"/../hooks "$SCRIPTS_DIR"/../.git
chmod 755 "$SCRIPTS_DIR"/../.git/hooks
