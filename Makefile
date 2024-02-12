PLATFORM_IOS = iOS Simulator,name=iPhone 15
PLATFORM_IPADOS = iOS Simulator,name=iPad (10th generation)
PLATFORM_MACOS = macOS
PLATFORM_TVOS = tvOS Simulator,name=Apple TV
PLATFORM_VISIONOS = visionOS Simulator,name=Apple Vision Pro
PLATFORM_WATCHOS = watchOS Simulator,name=Apple Watch Series 9 (45mm)

PROJECT = App/AppProject.xcodeproj
SCHEME = AppTests
TEST_PLAN = AppTests
CONFIG = debug

default: test

test:
	for platform in \
		"$(PLATFORM_IOS)" \
		"$(PLATFORM_IPADOS)" \
		"$(PLATFORM_MACOS)" \
		"$(PLATFORM_TVOS)" \
		"$(PLATFORM_VISIONOS)" \
		"$(PLATFORM_WATCHOS)"; \
	do \
		xcodebuild test \
			-project $(PROJECT) \
			-scheme $(SCHEME) \
			-testPlan $(TEST_PLAN) \
			-configuration $(CONFIG) \
			-destination platform="$$platform" || exit 1; \
	done;
