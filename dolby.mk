PRODUCT_PACKAGES += \
    dms_compatibility_matrix \
    dms_manifest \
    vendor.dolby.hardware.dms@2.0-service \
    MotoSignatureApp \
    MotorolaSettingsProvider \
    daxService \
    MotoDolbyDax3 \
    com.motorola.frameworks.core.addon \
    moto \
    moto-core_services \
    moto-settings \
    com.motorola.motosignature \
    moto-checkin \
    libaualgo_foundation \
    libdeccfg \
    libdapparamstorage \
    libaualgo_sst_component \
    libstagefrightdolby \
    libdlbpreg \
    libstagefright_soft_ddpdec \
    vendor.dolby.hardware.dms@2.0 \
    libstagefright_soft_ac4dec \
    libmsstwrapper \
    libswvqe \
    libswdap \
    libswgamedap \
    libdlbvol \
    libdlbdsservice \
    vendor.dolby.hardware.dms@2.0-impl \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/vendor/etc/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml \
    $(LOCAL_PATH)/proprietary/vendor/etc/aualgo/aualgo_sst.conf:$(TARGET_COPY_OUT_VENDOR)/etc/aualgo/aualgo_sst.conf \
    $(LOCAL_PATH)/proprietary/vendor/etc/default-permissions/default-com.motorola.dolby.dolbyui.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default-permissions/default-com.motorola.dolby.dolbyui.xml \
    $(LOCAL_PATH)/proprietary/vendor/etc/default-permissions/default-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default-permissions/default-com.dolby.daxservice.xml \
    $(LOCAL_PATH)/proprietary/vendor/etc/sysconfig/config-com.motorola.dolby.dolbyui.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sysconfig/config-com.motorola.dolby.dolbyui.xml \
    $(LOCAL_PATH)/proprietary/vendor/etc/sysconfig/config-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sysconfig/config-com.dolby.daxservice.xml \
    $(LOCAL_PATH)/proprietary/vendor/etc/enable-disable-packages/enable-disable-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_VENDOR)/etc/enable-disable-packages/enable-disable-com.dolby.daxservice.xml \
    $(LOCAL_PATH)/proprietary/vendor/etc/enable-disable-packages/enable-disable-com.motorola.dolby.dolbyui.xml:$(TARGET_COPY_OUT_VENDOR)/etc/enable-disable-packages/enable-disable-com.motorola.dolby.dolbyui.xml \
    $(LOCAL_PATH)/proprietary/vendor/etc/dolby/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml \
    $(LOCAL_PATH)/proprietary/vendor/etc/permissions/privapp-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-com.dolby.daxservice.xml \
    $(LOCAL_PATH)/proprietary/vendor/etc/permissions/privapp-com.motorola.dolby.dolbyui.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-com.motorola.dolby.dolbyui.xml \
    $(LOCAL_PATH)/proprietary/vendor/etc/permissions/com.motorola.software.sstservice.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.motorola.software.sstservice.xml \
    $(LOCAL_PATH)/proprietary/vendor/etc/permissions/com.motorola.software.dolby.motodolbyui.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.motorola.software.dolby.motodolbyui.xml \
    $(LOCAL_PATH)/proprietary/system/etc/sysconfig/config-com.motorola.motosignature.app.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/config-com.motorola.motosignature.app.xml \
    $(LOCAL_PATH)/proprietary/system/etc/sysconfig/config-com.motorola.android.providers.settings.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/config-com.motorola.android.providers.settings.xml \
    $(LOCAL_PATH)/proprietary/system/etc/permissions/moto-checkin.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/moto-checkin.xml \
    $(LOCAL_PATH)/proprietary/system/etc/permissions/moto.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/moto.xml \
    $(LOCAL_PATH)/proprietary/system/etc/permissions/moto-core_services.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/moto-core_services.xml \
    $(LOCAL_PATH)/proprietary/system/etc/permissions/privapp-com.motorola.android.providers.settings.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-com.motorola.android.providers.settings.xml \
    $(LOCAL_PATH)/proprietary/system/etc/permissions/moto-settings.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/moto-settings.xml \
    $(LOCAL_PATH)/proprietary/system/etc/permissions/com.motorola.motosignature.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.motorola.motosignature.xml \
    $(LOCAL_PATH)/proprietary/system/etc/permissions/com.motorola.frameworks.core.addon.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.motorola.frameworks.core.addon.xml \

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += vendor/motorola/dolby/sepolicy/vendor

# Dolby Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.audio.dolby.dax.support=true \
    vendor.audio.dolby.ds2.enabled=true \
    vendor.audio.dolby.ds2.hardbypass=true \
    vendor.audio.dolby.dms.support=true
