# grouper bluetooth fix
PRODUCT_COPY_FILES += \
    vendor/psx/proprietary/common/grouper/etc/permissions/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    vendor/psx/proprietary/common/grouper/lib/hw/bluetooth.default.so:system/lib/hw/bluetooth.default.so \
    vendor/psx/proprietary/common/grouper/lib/libbt-hci.so:system/lib/libbt-hci.so \
    vendor/psx/proprietary/common/grouper/lib/libbt-utils.so:system/lib/libbt-utils.so
    