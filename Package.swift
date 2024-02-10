// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "AppPackage",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .visionOS(.v1),
        .watchOS(.v6),
    ],
    products: [
        .library(
            name: "AppPackage",
            targets: ["AppPackage"]
        ),
    ],
    targets: [
        .target(
            name: "AppPackage"
        ),
        .testTarget(
            name: "AppPackageTests",
            dependencies: ["AppPackage"]
        ),
    ]
)
