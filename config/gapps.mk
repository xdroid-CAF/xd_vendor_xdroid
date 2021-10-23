#ifeq ($(WITH_GAPPS),true)
# Gapps
$(call inherit-product, vendor/gapps/config.mk)

# Common Overlay
DEVICE_PACKAGE_OVERLAYS += \
    vendor/extended/overlay-gapps/common

# Exclude RRO Enforcement
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS +=  \
    vendor/extended/overlay-gapps

$(call inherit-product, vendor/extended/config/rro_overlays.mk)

#endif
