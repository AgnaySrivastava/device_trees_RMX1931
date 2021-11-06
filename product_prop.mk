# Adb
ifeq ($(TARGET_BUILD_VARIANT),eng)
# /vendor/default.prop is force-setting ro.adb.secure=1
# Get rid of that by overriding it in /product on eng builds
PRODUCT_PRODUCT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0
endif


# Override Display Density
PRODUCT_PRODUCT_PROPERTIES += \
    ro.sf.lcd_density=480

# Gapps
ifeq ($(WITH_GMS),true)
# SetupWizard and Google Assistant properties
PRODUCT_PRODUCT_PROPERTIES += \
    ro.setupwizard.rotation_locked=true \
    ro.opa.eligible_device=true \
    ro.com.google.ime.kb_pad_port_b=1
endif