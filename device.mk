#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Project ID Quota
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1440
TARGET_SCREEN_WIDTH := 720

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Ramdisk
PRODUCT_PACKAGES += \
    init.connectivity.rc \
    init.modem.rc \
    init.mt6765.rc \
    init.mt6765.usb.rc \
    init.sensor_1_0.rc \
    fstab.mt6765 \
    fstab.mt6765_ramdisk \
    ueventd.mt6765.rc

# Shipping API Level
PRODUCT_SHIPPING_API_LEVEL := 29

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/certus/certus-vendor.mk)
