PRODUCT_VERSION_MAJOR = 11
PRODUCT_VERSION_MINOR = 0

# Increase CR Version with each major release.
CR_VERSION := 7-JUL24

ifeq ($(WITH_MICROG),true)
  CR_EXTRAVERSION := -MICROG
else ifeq ($(WITH_GMS),true)
  CR_EXTRAVERSION := -GMS
endif

LINEAGE_VERSION := crDroid-rev-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(shell date +%Y%m%d)-$(LINEAGE_BUILD)-v$(CR_VERSION)$(CR_EXTRAVERSION)
LINEAGE_DISPLAY_VERSION := crDroid-rev-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(LINEAGE_BUILD)-v$(CR_VERSION)$(CR_EXTRAVERSION)
