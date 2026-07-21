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
        .package(url: "https://github.com/PostHog/posthog-ios.git", from: "3.48.3"),
        // PostHog pulls CrashReporter; linking it on this target fixes "Missing required module 'CrashReporter'" for apps that depend on inarix-ios-sdk.
        .package(url: "https://github.com/microsoft/plcrashreporter.git", from: "1.12.2"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "inarix-ios-sdk",
            dependencies: [
                .product(name: "NewRelic", package: "newrelic-ios-agent-spm"),
                .product(name: "PostHog", package: "posthog-ios"),
                .product(name: "CrashReporter", package: "plcrashreporter"),
                .target(name: "InarixSDK"),
            ]),
        .binaryTarget(name: "InarixSDK", url: "https://storage.googleapis.com/prod-inarix-public/dev/InarixSDK_v1.1.0-beta.xcframework.zip", checksum: "83a3264227751ad5cbaa900731600b4649a4031f9a8e4a5fbfac86a0c9985760"),
        .testTarget(
            name: "inarix-ios-sdkTests",
            dependencies: ["inarix-ios-sdk"]),
    ])
