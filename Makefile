TARGET = iphone:latest
#TARGET = simulator:clang

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = LockGlyph
LockGlyph_FILES = Tweak.xm
LockGlyph_FRAMEWORKS = UIKit CoreGraphics AudioToolbox AVFoundation QuartzCore
SHARED_CFLAGS = -fobjc-arc
ADDITIONAL_OBJCFLAGS = -fobjc-arc
#LockGlyph_USE_SUBSTRATE = 0

BUNDLE_NAME = LockGlyph-Default
LockGlyph-Default_INSTALL_PATH = /Library/Application Support/LockGlyph/Themes/

include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS)/makefiles/bundle.mk

after-install::
	install.exec "killall -9 backboardd"
SUBPROJECTS += lockglyphprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
