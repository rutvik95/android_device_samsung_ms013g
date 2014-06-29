#!/bin/bash

export VENDOR=samsung
export DEVICE=ms013g
# Comment these out if there is no common device tree for this device
export COMMON_DEVICE=msm8226-common
export BOARD_VENDOR=samsung-qcom
export TARGET_BOARD_PLATFORM=msm8226

../$COMMON_DEVICE/extract-files.sh $@
