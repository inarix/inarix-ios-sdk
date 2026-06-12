// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "inarix-ios-sdk",
    platforms: [.iOS(.v16)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "inarix-ios-sdk",
            targets: ["inarix-ios-sdk"]),
    ],
    dependencies: [
        // Add dependencies if your SDK uses other packages.
        .package(url: "https://github.com/newrelic/newrelic-ios-agent-spm.git", branch: "main"),
        .package(url: "https://github.com/PostHog/posthog-ios.git", from: "3.48.2"),
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
        .binaryTarget(name: "InarixSDK", url: "https://storage.googleapis.com/prod-inarix-public/test/InarixSDK_v1.0.1-test.xcframework.zip", checksum: "001b32fba17a0df5f31d8e1448405216f0c17ca14af7941c988c293677bd2903"),
        .testTarget(
            name: "inarix-ios-sdkTests",
            dependencies: ["inarix-ios-sdk"]),
    ])
