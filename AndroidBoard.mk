LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)

#----------------------------------------------------------------------
# extra images
#----------------------------------------------------------------------

#comment it out if building recovery only
#include build/core/generate_extra_images.mk

# include the non-open-source counterpart to this file
-include vendor/xiaomi/cancro/AndroidBoardVendor.mk
