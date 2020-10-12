# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/mokee/config/common_full_phone.mk)
# Thanks to mokee device tree oxford
# Inherit from sanders device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := sanders
PRODUCT_MANUFACTURER := motorola
PRODUCT_NAME := mokee_sanders
PRODUCT_MODEL := sanders

PRODUCT_GMS_CLIENTID_BASE := android-motorola
TARGET_VENDOR := motorola
TARGET_VENDOR_PRODUCT_NAME := sanders
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC=" 8 OPS28.65-36-14 63857 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := 8.1.0/OPS28.65-36-14/63857:user/release-keys
