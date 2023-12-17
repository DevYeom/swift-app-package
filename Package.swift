// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "AppPackage",
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
