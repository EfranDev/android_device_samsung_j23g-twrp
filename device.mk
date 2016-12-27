$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/j23g/j23g-vendor.mk)

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
    $(LOCAL_PATH)/twrp.fstab:recovery/root/etc/recovery.fstab

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
