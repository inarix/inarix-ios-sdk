// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "inarix-ios-sdk",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "inarix-ios-sdk",
            targets: ["inarix-ios-sdk"]),
    ],
    dependencies: [
        // Add dependencies if your SDK uses other packages.
        .package(url: "https://github.com/newrelic/newrelic-ios-agent-spm.git", branch: "main"),
        .package(url: "https://github.com/PostHog/posthog-ios.git", from: "3.19.2"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "inarix-ios-sdk",
            dependencies: [
                .product(name: "NewRelic", package: "newrelic-ios-agent-spm"),
                .product(name: "PostHog", package: "posthog-ios"),
                .target(name: "InarixSDK"),
            ]),
        .binaryTarget(name: "InarixSDK", url: "https://storage.googleapis.com/prod-inarix-public/dev/InarixSDK_v0.4.7-beta.xcframework.zip", checksum: "a5d2bb76b3c1b466dc169435e3d68a8dcc0ce0cd6674b654d96a8a5992b249f6"),
        .testTarget(
            name: "inarix-ios-sdkTests",
            dependencies: ["inarix-ios-sdk"]),
    ])
