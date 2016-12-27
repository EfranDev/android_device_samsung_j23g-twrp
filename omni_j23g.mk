# Inherit from our custom product configuration

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration.
$(call inherit-product, device/samsung/j23g/full_j23g.mk)

# Device identifier.
PRODUCT_NAME := omni_j23g
