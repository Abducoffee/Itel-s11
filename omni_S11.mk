#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from S11 device
$(call inherit-product, device/ITEL/S11/device.mk)

PRODUCT_DEVICE := S11
PRODUCT_NAME := omni_S11
PRODUCT_BRAND := Itel
PRODUCT_MODEL := Itel S11
PRODUCT_MANUFACTURER := Itel

PRODUCT_GMS_CLIENTID_BASE := android-tecno

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="S11-user 6.0 MRA58K 1524217265 release-keys"

BUILD_FINGERPRINT := Itel/S11/S11:6.0/MRA58K/S11-I801-6.0-V070-180420:user/release-keys
