#
# Copyright (C) 2015 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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
#
BOARD_VENDOR := xiaomi

CANCRO_PATH := device/xiaomi/cancro

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8974
TARGET_NO_BOOTLOADER         := true
TARGET_NO_RADIOIMAGE         := true

# Platform
TARGET_BOARD_PLATFORM     := msm8974
TARGET_BOARD_PLATFORM_GPU := qcom-adreno330

# Architecture
TARGET_ARCH         := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI      := armeabi-v7a
TARGET_CPU_ABI2     := armeabi
TARGET_CPU_SMP      := true
TARGET_CPU_VARIANT  := krait

# Kernel
BOARD_KERNEL_CMDLINE               := console=none vmalloc=340M androidboot.hardware=qcom msm_rtb.filter=0x3b7 ehci-hcd.park=3 androidboot.bootdevice=msm_sdcc.1
BOARD_KERNEL_BASE                  := 0x00000000
BOARD_KERNEL_PAGESIZE              := 2048
BOARD_MKBOOTIMG_ARGS               := --dt device/xiaomi/cancro/dt.img --ramdisk_offset 0x02000000 --tags_offset 0x01E00000
TARGET_PREBUILT_KERNEL := device/xiaomi/cancro/kernel

# Filesystem
TARGET_USERIMAGES_USE_EXT4          := true
TARGET_USERIMAGES_USE_F2FS          := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE   := ext4
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_BOOTIMAGE_PARTITION_SIZE      := 16384000
BOARD_RECOVERYIMAGE_PARTITION_SIZE  := 16384000
BOARD_SYSTEMIMAGE_PARTITION_SIZE    := 1342177280
BOARD_USERDATAIMAGE_PARTITION_SIZE  := 13291503000
BOARD_CACHEIMAGE_PARTITION_SIZE     := 393216000
BOARD_PERSISTIMAGE_PARTITION_SIZE   := 16384000
BOARD_FLASH_BLOCK_SIZE              := 131072

# TWRP configuration
TARGET_RECOVERY_FSTAB := $(CANCRO_PATH)/recovery/twrp.fstab
TW_THEME := portrait_hdpi
WITH_TWRP := true
BOARD_HAS_NO_REAL_SDCARD                := true
BOARD_RECOVERY_SWIPE                    := true
RECOVERY_GRAPHICS_USE_LINELENGTH        := true
RECOVERY_GRAPHICS_FORCE_USE_LINELENGTH := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID  := true
TW_INCLUDE_CRYPTO                       := true
TARGET_RECOVERY_QCOM_RTC_FIX            := true
BOARD_SUPPRESS_SECURE_ERASE             := true
BOARD_SUPPRESS_EMMC_WIPE                := true
RECOVERY_SDCARD_ON_DATA                 := true
TW_EXCLUDE_SUPERSU := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 160
TW_INCLUDE_NTFS_3G := true
#TW_TARGET_USES_QCOM_BSP := true (this fix the heap_id_mask error when compiling with prebuilt kernel)


