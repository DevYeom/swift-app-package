# swift-app-package

<a href="https://github.com/DevYeom/swift-app-package/actions">
  <img alt="CI" src="https://github.com/DevYeom/swift-app-package/workflows/CI/badge.svg">
</a>

Welcome to **swift-app-package**, a template project designed to kickstart your app development journey using Swift, SwiftUI, and Swift Package Manager (SPM). With this template, you can develop applications for multiple platforms including `iOS`, `iPadOS`, `macOS`, `tvOS`, `visionOS`, and `watchOS` all within a single project. With the use of [SPM](https://github.com/apple/swift-package-manager), we no longer need third-party dependencies such as [Tuist](https://github.com/tuist/tuist), [XcodeGen](https://github.com/yonaskolb/XcodeGen), or [xUnique](https://github.com/truebit/xUnique).

## Overview

- **Targets**: `AppProject` consists of six targets: `iOS`, `iPadOS`, `macOS`, `tvOS`, `visionOS`, and `watchOS`.
- **Modules**: `AppPackage` includes two default modules: `AppCore` and `AppUI`.
- **Test Plans**: There are separate test plans for `AppCoreTests` and `AppUITests`, which are integrated into `AppTests`.

## Getting Started

To begin using **swift-app-package**, simply clone or download this repository and start building your app on top of the provided template.

```
git clone --depth 1 https://github.com/DevYeom/swift-app-package
```

## Usage

1. Clone or download the repository.
2. Open the project in Xcode. (`App/AppProject.xcodeproj`)
3. Start developing your app.
4. Customize and extend the template to suit your app's requirements.
5. Build and run your app across various platforms to explore its full potential.

## Advanced

1. **Unit Testing**: Run unit tests based on the test plan by executing `make test`.
2. **Bundle Identifier Modification**: Modify the bundle identifier using `make id`.
3. **GitHub Action**: Explore default GitHub Actions settings in `.github/workflows`.

## License

This library is released under the MIT license. See [LICENSE](LICENSE) for details.
