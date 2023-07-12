DEVICE_PATH := device/nokia/CO2_sprout

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Platform
TARGET_BOARD_PLATFORM := mt6750
TARGET_BOOTLOADER_BOARD_NAME := CO2_sprout

# These two are for MTK Chipsets only
BOARD_USES_MTK_HARDWARE := true
BOARD_HAS_MTK_HARDWARE := true

# Recovery
# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 30000000
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_COPY_OUT_VENDOR := vendor
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_RECOVERY_SWIPE := true
BOARD_USES_MMCUTILS := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_CHARGER_SHOW_PERCENTAGE := true

BOARD_USE_LEGACY_TOUCHSCREEN := true

# Assert
TARGET_OTA_ASSERT_DEVICE := CO2_sprout

# A/B
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    boot \
    system \
    vendor

# Kernel
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 buildvariant=user veritykeyid=id:8f56f02c61394639f13af4e8cfe02d087e41b936
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz-dtb
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/mtk.dtb
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x04f88000
BOARD_KERNEL_TAGS_OFFSET := 0x03f88000
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_KERNEL_SOURCE := kernel/nokia/mt6755
TARGET_KERNEL_CONFIG := CO2_defconfig

# System-as-root
BOARD_BUILD_SYSTEM_ROOT_IMAGE := fasle

# TWRP stuff
TW_EXCLUDE_SUPERSU := false                   # true/false: Add SuperSU or not
TW_INCLUDE_CRYPTO := true                     # true/false: Add Data Encryption Support or not
TW_INPUT_BLACKLIST := "hbtp_vm"               # Optional: Disables virtual mouse
TW_SCREEN_BLANK_ON_BOOT := true
TW_THEME := portrait_hdpi                     # Set the exact theme you wanna use. If resulation doesn't match, define the height/width
DEVICE_RESOLUTION := 1080x2160
TARGET_SCREEN_HEIGHT := 2160                  # The height
TARGET_SCREEN_WIDTH := 1080                   # The width
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
# TW_SECONDARY_BRIGHTNESS_PATH := "/sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness"
# TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file"
# TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
# TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 50
# TW_NO_FASTBOOT_BOOT := true
TW_INCLUDE_NTFS_3G := true                    # Include NTFS Filesystem Support
TW_INCLUDE_FUSE_EXFAT := true                 # Include Fuse-ExFAT Filesystem Support
TWRP_INCLUDE_LOGCAT := true                   # Include LogCat Binary
# TW_INCLUDE_FB2PNG := true                     # Include Screenshot Support
TW_DEFAULT_LANGUAGE := ru                     # Set Default Language 
TW_EXTRA_LANGUAGES := false
TW_INCLUDE_REPACKTOOLS := true
TW_USE_TOOLBOX := true
# TW_EXCLUDE_DEFAULT_USB_INIT := true
# TW_INCLUDE_RESETPROP := true
TARGET_USES_MKE2FS := true
TW_NO_LEGACY_PROPS := true
TW_USE_NEW_MINADBD := true
TW_NO_BIND_SYSTEM := true
RECOVERY_SDCARD_ON_DATA := true

# No recovery partition
BOARD_USES_RECOVERY_AS_BOOT := true

# Set FSTAB
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/etc/recovery.fstab

# Architecture
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a53
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53
TARGET_CPU_ABI_LIST_64_BIT := $(TARGET_CPU_ABI)
TARGET_CPU_ABI_LIST_32_BIT := $(TARGET_2ND_CPU_ABI),$(TARGET_2ND_CPU_ABI2)
TARGET_CPU_ABI_LIST := $(TARGET_CPU_ABI_LIST_64_BIT),$(TARGET_CPU_ABI_LIST_32_BIT)
