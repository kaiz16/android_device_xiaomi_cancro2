
LOCAL_PATH := device/xiaomi/cancro

# Screen density
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel \
    $(LOCAL_PATH)/dt.img:dt.img \
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/twrp.fstab:recovery/root/etc/twrp.fstab
