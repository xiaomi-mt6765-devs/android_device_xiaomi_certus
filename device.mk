#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Ramdisk
PRODUCT_PACKAGES += \
    init.connectivity.rc \
    init.modem.rc \
    init.mt6765.rc \
    init.mt6765.usb.rc \
    fstab.mt6765 \
    ueventd.mt6765.rc

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/certus/certus-vendor.mk)
