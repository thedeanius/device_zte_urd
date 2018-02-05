# Inherit from some product specifics
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common stuff
$(call inherit-product, vendor/omni/config/common.mk)

# Release name
PRODUCT_RELEASE_NAME := urd

# Charger
PRODUCT_PACKAGES += charger charger_res_images

PRODUCT_COPY_FILES += \
    device/zte/urd/kernel:kernel \
    device/zte/urd/dt.img:dt.img \
	device/zte/urd/twrp.fstab:root/etc/twrp.fstab

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := urd
PRODUCT_NAME := omni_urd
PRODUCT_BRAND := zte
PRODUCT_MODEL := Z981
PRODUCT_MANUFACTURER := zte
