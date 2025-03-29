PLATFORM_IOS = iOS Simulator,name=iPhone 16
PLATFORM_IPADOS = iOS Simulator,name=iPad (10th generation)
PLATFORM_MACOS = macOS
PLATFORM_TVOS = tvOS Simulator,name=Apple TV
PLATFORM_VISIONOS = visionOS Simulator,name=Apple Vision Pro
PLATFORM_WATCHOS = watchOS Simulator,name=Apple Watch Series 10 (42mm)

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

id:
	@read -p "Enter the new Bundle Identifier: " new_bundle_identifier; \
	find . -name '*.pbxproj' -exec sed -i '' "s/com.devyeom.app/$$new_bundle_identifier/g" {} + && \
	echo "Bundle Identifier changed to $$new_bundle_identifier"
