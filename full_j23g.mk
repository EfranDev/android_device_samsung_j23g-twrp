$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

LOCAL_PATH := device/samsung/j23g

$(call inherit-product, build/target/product/full.mk)

$(call inherit-product, device/samsung/j23g/device.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_j23g
PRODUCT_DEVICE := j23g
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-j23g
