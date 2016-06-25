# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit some common CM stuff.
# $(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)


# try adding chagall-klimtwifi-common
$(call inherit-product, device/samsung/chagall-klimt-common/device.mk)

# Inherit from lt03wifi device
$(call inherit-product, device/samsung/lt03wifi/device.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := aosp_lt03wifi
PRODUCT_DEVICE := lt03wifi
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-P600
