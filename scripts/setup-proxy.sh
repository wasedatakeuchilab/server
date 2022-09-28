#! /usr/bin/env bash

set -euC
set -o pipefail

WASEDA_PROXY="http://www-proxy.waseda.jp:8080"
ENVFILE="/etc/environment"
NO_PROXY="10.0.0.0/8,192.168.0.0/16,127.0.0.1"

{
    echo "http_proxy=$WASEDA_PROXY"
    echo "https_proxy=$WASEDA_PROXY"
    echo "no_proxy=$NO_PROXY"
    echo "HTTP_PROXY=$WASEDA_PROXY"
    echo "HTTPS_PROXY=$WASEDA_PROXY"
    echo "NO_PROXY=$NO_PROXY"
} | sudo tee -a "$ENVFILE"
