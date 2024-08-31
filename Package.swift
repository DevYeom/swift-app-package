// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "AppPackage",
    platforms: [
        .iOS(.v15),
        .macOS(.v12),
        .tvOS(.v15),
        .visionOS(.v1),
        .watchOS(.v8),
    ],
    products: [
        .library(
            name: "AppCore",
            targets: ["AppCore"]
        ),
        .library(
            name: "AppUI",
            targets: ["AppUI"]
        ),
    ],
    targets: [
        .target(
            name: "AppCore"
        ),
        .testTarget(
            name: "AppCoreTests",
            dependencies: ["AppCore"]
        ),
        .target(
            name: "AppUI"
        ),
        .testTarget(
            name: "AppUITests",
            dependencies: ["AppUI"]
        ),
    ]
)
