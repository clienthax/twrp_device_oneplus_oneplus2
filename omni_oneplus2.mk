#Inherit from some product specifics
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common stuff
$(call inherit-product, vendor/omni/config/common.mk)

# Release name
PRODUCT_RELEASE_NAME := oneplus2

# Charger
PRODUCT_PACKAGES += charger charger_res_images

PRODUCT_COPY_FILES += \
    device/oneplus/oneplus2/prebuilt/kernel:kernel

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := oneplus2
PRODUCT_NAME := omni_oneplus2
PRODUCT_MODEL := OnePlus 2
PRODUCT_MANUFACTURER := OnePlus

# Fixup for official stuff
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=OnePlus2 PRODUCT_NAME=OnePlus2

