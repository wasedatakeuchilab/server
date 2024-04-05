#! /usr/bin/env bash

set -euC
set -o pipefail

WASEDA_PROXY="http://www-proxy.waseda.jp:8080"
ENVFILE="/etc/environment"
LOCAL_ADDRESS="192.168.0.0/24,local,lab"
DOCKER_ADDRESS="172.0.0.0/8"
K8S_ADDRESS="10.0.0.0/8,svc"
NO_PROXY="127.0.0.1,localhost,$LOCAL_ADDRESS,$DOCKER_ADDRESS,$K8S_ADDRESS"

# For microK8s
SERVER_NAMES=(
  "titan"
  "colossus"
  "behemoth"
)
for name in "${SERVER_NAMES[@]}"; do
  NO_PROXY+=",$name"
done

{
  echo "http_proxy=$WASEDA_PROXY"
  echo "https_proxy=$WASEDA_PROXY"
  echo "no_proxy=$NO_PROXY"
  echo "HTTP_PROXY=$WASEDA_PROXY"
  echo "HTTPS_PROXY=$WASEDA_PROXY"
  echo "NO_PROXY=$NO_PROXY"
} | sudo tee -a "$ENVFILE"

# For Docker
DOCKER_CONF_DIR="/etc/systemd/system/docker.service.d"
sudo mkdir -p "$DOCKER_CONF_DIR"
echo "[Service]
Environment=\"HTTP_PROXY=$WASEDA_PROXY\" \"HTTPS_PROXY=$WASEDA_PROXY\" \"NO_PROXY=$NO_PROXY\"
" | sudo tee "$DOCKER_CONF_DIR/http-proxy.conf"
sudo systemctl daemon-reload
sudo systemctl restart docker
