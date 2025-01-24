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
        .package(url: "https://github.com/PostHog/posthog-ios.git", branch: "fix/internal-phlibwebp"),
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
        .binaryTarget(name: "InarixSDK", url: "https://storage.googleapis.com/prod-inarix-public/dev/InarixSDK_v0.2.5-alpha.xcframework.zip", checksum: "89940a6ab7b11b6f99a3c829d9c0e5cc0f2ac2380c03d716b35c949a78105ff4"),
        .testTarget(
            name: "inarix-ios-sdkTests",
            dependencies: ["inarix-ios-sdk"]),
    ])
