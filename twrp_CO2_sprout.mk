# Release name
PRODUCT_RELEASE_NAME := CO2_sprout

# Add this line if your device is 64-bit
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

#From device.mk
# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Provides dependencies necessary for verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/verity.mk)

PRODUCT_COPY_FILES += device/Nokia/CO2_sprout/prebuilt/kernel:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := $(PRODUCT_RELEASE_NAME)
PRODUCT_NAME := twrp_$(PRODUCT_DEVICE)
PRODUCT_BRAND := Nokia
PRODUCT_MODEL := $(PRODUCT_RELEASE_NAME)
PRODUCT_MANUFACTURER := Nokia

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    # These lines are from my device. You MUST Replace yours.
    BUILD_FINGERPRINT="Nokia/Core2_00WW/CO2_sprout:10/QP1A.190711.020/00WW_4_200:user/release-keys" \
    PRIVATE_BUILD_DESC="Core2_00WW-user 10 QP1A.190711.020 00WW_4_200 release-keys"