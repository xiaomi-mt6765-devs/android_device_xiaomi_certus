#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/certus/certus-vendor.mk)
