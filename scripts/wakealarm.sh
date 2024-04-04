#! /usr/bin/env bash

set -euC
set -o pipefail

HOUR="$1"

date "+%s" -d "$HOUR hours" >|/sys/class/rtc/rtc0/wakealarm
