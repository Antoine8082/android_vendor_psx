# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit common product files.
$(call inherit-product, vendor/psx/products/common.mk)

# Inherit GApps
$(call inherit-product, vendor/psx/products/gapps.mk)

# Setup device specific product configuration.
PRODUCT_NAME := psx_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=yakju BUILD_FINGERPRINT="google/yakju/maguro:4.3/JWR66V/737497:user/release-keys" PRIVATE_BUILD_DESC="yakju-user 4.3 JWR66V 737497 release-keys"

# Inherit media effect blobs
-include vendor/psx/products/common_media_effects.mk
