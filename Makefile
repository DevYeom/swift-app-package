PLATFORM_IOS = iOS Simulator,name=iPhone 17
PLATFORM_IPADOS = iOS Simulator,name=iPad (A16)
PLATFORM_MACOS = macOS
PLATFORM_TVOS = tvOS Simulator,name=Apple TV
PLATFORM_VISIONOS = visionOS Simulator,name=Apple Vision Pro,OS=26.2
PLATFORM_WATCHOS = watchOS Simulator,name=Apple Watch Series 11 (42mm)

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

CURRENT_NAME ?= AppProject

rename:
	@read -p "Enter the new Project Name: " new_name; \
	if [ -z "$$new_name" ]; then \
		echo "Project name cannot be empty"; \
		exit 1; \
	fi; \
	echo "Renaming project from $(CURRENT_NAME) to $$new_name..."; \
	find . -name '.DS_Store' -delete; \
	find . -type f -name 'project.pbxproj' -exec sed -i '' "s/$(CURRENT_NAME)/$$new_name/g" {} +; \
	find . -type f -name '*.xcscheme' -exec sed -i '' "s/$(CURRENT_NAME)/$$new_name/g" {} +; \
	find . -type f -name 'Makefile' -exec sed -i '' "s/$(CURRENT_NAME)/$$new_name/g" {} +; \
	find . -type f -name 'README.md' -exec sed -i '' "s/$(CURRENT_NAME)/$$new_name/g" {} +; \
	if [ -d "App/$(CURRENT_NAME).xcodeproj" ]; then \
		mv "App/$(CURRENT_NAME).xcodeproj" "App/$$new_name.xcodeproj"; \
	fi; \
	echo "Project renamed from $(CURRENT_NAME) to $$new_name"
