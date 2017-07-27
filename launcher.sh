#!/bin/bash

# Disable the chromium sandbox to work around https://launchpad.net/bugs/1599234.
# Rely on snapd’s security policy instead.
export OXIDE_NO_SANDBOX=1

if [ "$SNAP_ARCH" = "amd64" ]; then
    ARCH="x86_64-linux-gnu"
elif [ "$SNAP_ARCH" = "armhf" ]; then
    ARCH="arm-linux-gnueabihf"
elif [ "$SNAP_ARCH" == "arm64" ]; then
    ARCH="aarch64-linux-gnu"
else
    ARCH="$SNAP_ARCH-linux-gnu"
fi

exec $SNAP/opt/PockIt/bin/PockIt "$@"
