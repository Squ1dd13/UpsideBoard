DEBUG = 0
ARCHS = armv7 arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = UpsideBoard
UpsideBoard_FILES = Tweak.xm
UpsideBoard_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	killall -9 SpringBoard
SUBPROJECTS += upsideboardprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
