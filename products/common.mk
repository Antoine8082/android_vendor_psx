# Generic product
PRODUCT_NAME := psx
PRODUCT_BRAND := psx
PRODUCT_DEVICE := generic

# Common overrides 
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    dalvik.vm.dexopt-flags=m=y

# Needed packages
PRODUCT_PACKAGES += \
    QSCP \
    Stk

# Common overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/psx/overlay/common

# Common dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/psx/overlay/dictionaries

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Bootanimation
PRODUCT_COPY_FILES += \
    vendor/psx/proprietary/common/system/media/bootanimation.zip:system/media/bootanimation.zip
	
# NovaLauncher
PRODUCT_COPY_FILES += \
    vendor/psx/proprietary/common/system/app/NovaLauncher.apk:system/app/NovaLauncher.apk
