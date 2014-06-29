-include device/samsung/msm8226-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/samsung/ms013g/BoardConfigVendor.mk

LOCAL_PATH := device/samsung/ms013g

# Vendor Init
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_msm


# Custom relese tools for unified devices
TARGET_RELEASETOOLS_EXTENSIONS := device/samsung/ms013g

#bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

#TWRP
DEVICE_RESOLUTION := 720x1280
TW_IGNORE_MAJOR_AXIS_0 := true

# userdata 8GB
BOARD_USERDATAIMAGE_PARTITION_SIZE := 8589934592
