# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# call dalvik heap config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)

# call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# Inherit from h60-l01 device
$(call inherit-product, device/huawei/h60_l01/h60_l01.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_h60_l01
PRODUCT_DEVICE := h60_l01
PRODUCT_BRAND := Huawei
PRODUCT_MANUFACTURER := Huawei
PRODUCT_MODEL := Honor 6
