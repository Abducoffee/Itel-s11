$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
# Otherwise, If you have 32-bit device, add the below line instead of above line
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk
# Another common config inclusion $(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)
# If you are building from OmniROM's minimal source, Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
# Replace $$DEVICE$$ with your Device Name's Value.
# Replace $$BRAND$$ with your Brand's / Manufacturer's Value.
PRODUCT_COPY_FILES += device/ITEL/S11/prebuilt/zImage:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*
PRODUCT_DEVICE := S11
PRODUCT_NAME := omni_S11
PRODUCT_BRAND := ITEL
PRODUCT_MODEL := S11
PRODUCT_MANUFACTURER := ITEL
# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
persist.sys.usb.config=mtp
# Add fingerprint from Stock ROM build.prop PRODUCT_BUILD_PROP_OVERRIDES += \
# These lines are from my device. You MUST Replace yours.
BUILD_FINGERPRINT="Itel/S11/S11:6.0/MRA58K/S11-I801-6.0-V070-180420:user/release-keys" \
PRIVATE_BUILD_DESC="S11-user 6.0 MRA58K 1524217265 release-keys"