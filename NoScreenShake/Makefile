TARGET := iphone:clang:14.5:14.0
INSTALL_TARGET_PROCESSES = 'Galaxy On Fire 2 HD'
export SYSROOT = $(THEOS)/sdks/iPhoneOS14.5.sdk

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NoScreenShake

NoScreenShake_FILES = Tweak.xm
NoScreenShake_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/aggregate.mk
