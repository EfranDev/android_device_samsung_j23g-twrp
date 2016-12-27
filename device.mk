$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, build/target/product/full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/j23g/overlay

LOCAL_PATH := device/samsung/j23g

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/file_contexts:recovery/root/prebuilt_file_contexts

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.recovery.board.rc:root/init.recovery.board.rc \
    $(LOCAL_PATH)/init.recovery.universal.rc:root/init.recovery.universal.rc \
    $(LOCAL_PATH)/twrp.fstab:recovery/root/etc/twrp.fstab
