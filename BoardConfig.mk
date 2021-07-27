#
# Copyright (C) 2020 The LineageOS Project
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

## Inherit from the common tree
include device/samsung/exynos990-common/BoardConfigCommon.mk

## Inherit from the proprietary configuration
include vendor/samsung/x1s/BoardConfigVendor.mk

DEVICE_PATH := device/samsung/x1s

## APEX image
DEXPREOPT_GENERATE_APEX_IMAGE := true

TARGET_SPECIFIC_HEADER_PATH += $(DEVICE_PATH)/include

TARGET_OTA_ASSERT_DEVICE := x1s

## Display
TARGET_SCREEN_DENSITY := 480

## Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_x1s

## Kernel
TARGET_KERNEL_CONFIG := exynos9830-x1sxxx_defconfig
