# Inherit from the common tree
$(call inherit-product, device/samsung/exynos990-common/common.mk)

# Inherit proprietary files
$(call inherit-product, vendor/samsung/x1slte/x1slte-vendor.mk)

# Setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-6144-dalvik-heap.mk)

DEVICE_PATH := device/samsung/x1slte

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

# Audio
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/audio/mixer_gains.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_gains.xml

# Sensors
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

# WiFi
PRODUCT_PACKAGES += \
    WifiOverlay
