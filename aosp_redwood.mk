#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from redwood device
$(call inherit-product, device/xiaomi/redwood/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

PRODUCT_BRAND := POCO
PRODUCT_DEVICE := redwood
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 22101320G
PRODUCT_NAME := aosp_redwood

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_SYSTEM_NAME := redwood_global
PRODUCT_SYSTEM_DEVICE := redwood

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc=$(call normalize-path-list, "redwood_global-user 14 UKQ1.231003.002 V816.0.3.0.UMSMIXM release-keys") \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := POCO/redwood_global/redwood:14/UKQ1.231003.002/V816.0.3.0.UMSMIXM:user/release-keys