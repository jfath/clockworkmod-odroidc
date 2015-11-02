## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := odroidc

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/hardkernel/odroidc/device_odroidc.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := odroidc
PRODUCT_NAME := cm_odroidc
PRODUCT_BRAND := hardkernel
PRODUCT_MODEL := odroidc
PRODUCT_MANUFACTURER := hardkernel
