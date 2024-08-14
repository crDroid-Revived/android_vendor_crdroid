ifeq ($(WITH_MICROG),true)
  $(call inherit-product, vendor/partner_gms/products/gms.mk)
else ifeq ($(WITH_GMS),true)
  ifeq ($(GAPPS_ARCH),)
    $(warning GAPPS_ARCH undefined, assuming 64 bit)
    $(warning set GAPPS_ARCH to arm if your device is 32 bit)
    $(call inherit-product, vendor/gapps/arm64/arm64-vendor.mk)
  else ifeq ($(GAPPS_ARCH), arm)
    $(warning including 32 bit gapps)
    $(call inherit-product, vendor/gapps/arm/arm-vendor.mk)
    endif
endif
