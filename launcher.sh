#!/bin/bash

if [ "$SNAP_ARCH" = "amd64" ]; then
    ARCH="x86_64-linux-gnu"
elif [ "$SNAP_ARCH" = "armhf" ]; then
    ARCH="arm-linux-gnueabihf"
elif [ "$SNAP_ARCH" == "arm64" ]; then
    ARCH="aarch64-linux-gnu"
else
    ARCH="$SNAP_ARCH-linux-gnu"
fi

exec $SNAP/lib/$ARCH/bin/PockIt "$@"
