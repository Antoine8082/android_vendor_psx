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
    ro.com.android.dataroaming=false
 
# Build prop tweaks   
PRODUCT_PROPERTY_OVERRIDES += \
    telephony.lteOnGsmDevice=1 \
    ro.telephony.default_network=9 \
    ro.ril.def.preferred.network=9 \
    ro.ril.hsxpa=5 \
    ro.ril.gprsclass=12 \
    ro.ril.hsdpa.category=24 \
    ro.ril.hsupa.category=8 \
    debug.sf.hw=1 \
    debug.performance.tuning=1 \
    video.accelerate.hw=1 \
    windowsmgr.max_events_per_sec=360 \
    ro.max.fling_velocity=30000 \
    ro.min.fling_velocity=25000 \
    dalvik.vm.dexopt-flags=m=y \
    ro.HOME_APP_ADJ=1 \
    ro.min_pointer_dur=8 \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.lockprof.threshold=850 \
    persist.sys.purgeable_assets=1 \
    ro.ril.power_collapse=1 \
    pm.sleep_mode=1 \
    wifi.supplicant_scan_interval=300 \
    ro.kernel.android.checkjni=0 \
    ro.kernel.checkjni=0 \
    ro.config.nocheckin=1 \
    ro.ext4fs=1 \
    ro.config.hw_quickpoweron=true \
    persist.sys.use_dithering=0 \
    net.ppp0.dns1=8.8.8.8 \
    net.ppp0.dns2=8.8.4.4 \
    net.dns1=8.8.8.8 \
    net.dns2=8.8.4.4 \
    ro.telephony.call_ring.delay=0
    
# Extra packages
PRODUCT_PACKAGES += \
    QSCP \
    Stk \
    Superuser \
    su

# Koush superuser embedded
SUPERUSER_EMBEDDED := true

# Enable root for adb+apps
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.root_access=3
    
# Support init.d
PRODUCT_COPY_FILES += \
    vendor/psx/proprietary/common/system/bin/sysinit:system/bin/sysinit \
    vendor/psx/proprietary/common/system/etc/init.d/00banner:system/etc/init.d/00banner 

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
