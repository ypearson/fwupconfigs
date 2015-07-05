#!/bin/sh

set -e

FWUP_CONFIG=fwup-gamma.conf
FWUP=/usr/local/bin/fwup

FW_PATH=output/images/sdcard.fw
IMG_PATH=output/images/sdcard.img

echo "Creating firmware file..."
rm -f FW_PATH
PROJECT_ROOT=$PROJECT_ROOT $FWUP -c -f $FWUP_CONFIG -o $FW_PATH

echo "Creating raw SDCard image file..."
rm -f $IMG_PATH
$FWUP -a -d $IMG_PATH -i $FW_PATH -t buildimage


