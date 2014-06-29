$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/ms013g/ms013g-vendor.mk)
$(call inherit-product, device/samsung/msm8226-common/keylayout/keylayout.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/ms013g/overlay

LOCAL_PATH := device/samsung/ms013g
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Ramdisk
PRODUCT_PACKAGES += \
	fstab.qcom \

# Philz
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/extra.fstab:recovery/root/etc/extra.fstab

PRODUCT_LOCALES := en_US
PRODUCT_LOCALES += xhdpi
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi


$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, device/samsung/msm8226-common/msm8226.mk)

# TWRP
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/twrp.fstab:recovery/root/etc/twrp.fstab

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_ms013g
PRODUCT_DEVICE := ms013g
