# Inherit AOSP device configuration for manta.
$(call inherit-product, device/samsung/manta/full_manta.mk)

# Inherit common product files.
$(call inherit-product, vendor/psx/products/common.mk)

# Inherit s4 tweak
$(call inherit-product, vendor/psx/products/s4_tweak.mk)

# Setup device specific product configuration.
PRODUCT_NAME := psx_manta
PRODUCT_BRAND := google
PRODUCT_DEVICE := manta
PRODUCT_MODEL := Nexus 10
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mantaray BUILD_FINGERPRINT=google/mantaray/manta:4.3/JWR66Y/776638:user/release-keys PRIVATE_BUILD_DESC="mantaray-user 4.3 JWR66Y 776638 release-keys"
