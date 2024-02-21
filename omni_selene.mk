#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common pbrp stuff.
$(call inherit-product, vendor/pb/config/common.mk)

# Inherit from selene device
$(call inherit-product, device/xiaomi/selene/device.mk)

PRODUCT_DEVICE := selene
PRODUCT_NAME := omni_selene
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 10
PRODUCT_MANUFACTURER := Xiaomi
