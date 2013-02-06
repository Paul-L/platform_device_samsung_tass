# Copyright (C) 2009 The Android Open Source Project
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

## Inherit vendor proprietary files
$(call inherit-product, vendor/samsung/gio/vendor_blobs.mk)

include device/samsung/msm7x27-common/common.mk

## Device specific overlay
DEVICE_PACKAGE_OVERLAYS := device/samsung/gio/overlay

## Camera
PRODUCT_PACKAGES += \
    camera.gio

## Audio
PRODUCT_PACKAGES += \
   audio.primary.gio \
   audio_policy.gio

## Ramdisk
PRODUCT_COPY_FILES += \
    device/samsung/gio/ramdisk/init.gt-s5660board.rc:root/init.gt-s5660board.rc \
    device/samsung/gio/ramdisk/init.gt-s5660board.usb.rc:root/init.gt-s5660board.usb.rc \
    device/samsung/gio/ramdisk/ueventd.gt-s5660board.rc:root/ueventd.gt-s5660board.rc \
    device/samsung/gio/ramdisk/GIO.rle:root/GIO.rle

#We do call Camera app because it won't be built instead
PRODUCT_PACKAGES += Camera

## LDPI assets
PRODUCT_AAPT_PREF_CONFIG := mdpi
