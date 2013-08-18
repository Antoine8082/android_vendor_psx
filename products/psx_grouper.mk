# Inherit AOSP device configuration for grouper.
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Inherit common product files.
$(call inherit-product, vendor/psx/products/common.mk)

# Inherit GApps
$(call inherit-product, vendor/psx/products/gapps.mk)

# Setup device specific product configuration.
PRODUCT_NAME := psx_grouper
PRODUCT_BRAND := google
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasi BUILD_FINGERPRINT="google/nakasi/grouper:4.2.2/JDQ39/573038:user/release-keys" PRIVATE_BUILD_DESC="nakasi-user 4.2.2 JDQ39 573038 release-keys"
