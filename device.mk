#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Ramdisk
PRODUCT_PACKAGES += \
    factory_init.connectivity.rc \
    factory_init.rc \
    init.aee.rc \
    init.ago.rc \
    init.connectivity.rc \
    init.modem.rc \
    init.mt6765.rc \
    init.mt6765.usb.rc \
    init.project.rc \
    init.sensor_1_0.rc \
    meta_init.connectivity.rc \
    meta_init.modem.rc \
    meta_init.rc \
    multi_init.rc \
    fstab.mt6765 \
    ueventd.mt6765.rc

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/certus/certus-vendor.mk)
