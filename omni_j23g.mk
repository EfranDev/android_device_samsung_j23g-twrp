# Grab needed APNs
PRODUCT_COPY_FILES := vendor/omni/prebuilt/etc/apns-conf-cdma.xml:system/etc/apns-conf.xml

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/j23g/full_j23g.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := omni_j23g
PRODUCT_DEVICE := j23g
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER :=Samsung
PRODUCT_MODEL := j23g
