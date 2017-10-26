include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = upsideboardprefs
upsideboardprefs_FILES = upsideboardprefsRootListController.m
upsideboardprefs_INSTALL_PATH = /Library/PreferenceBundles
upsideboardprefs_FRAMEWORKS = UIKit
upsideboardprefs_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/upsideboardprefs.plist$(ECHO_END)
