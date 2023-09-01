// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SwiftGraphics",
    platforms: [
        .iOS(.v15),
        .macOS(.v12),
        .macCatalyst(.v15),
        .tvOS(.v16),
    ],
    products: [
        .library(
            name: "SwiftGraphics",
            targets: ["SwiftGraphics"]),
    ],
    dependencies: [
        .package(url: "http://github.com/schwa/CoreGraphicsGeometrySupport", from: "0.1.0"),
        .package(url: "http://github.com/schwa/Everything", branch: "jwight/develop"),
        .package(url: "https://github.com/schwa/SIMD-Support.git", from: "0.1.2"),
    ],
    targets: [
        .target(
            name: "SwiftGraphics",
            dependencies: [
                .product(name: "CoreGraphicsGeometrySupport", package: "CoreGraphicsGeometrySupport"),
                .product(name: "Everything", package: "Everything"),
                .product(name: "SIMDSupport", package: "SIMD-Support"),
            ]
        ),
        .testTarget(
            name: "SwiftGraphicsTests",
            dependencies: ["SwiftGraphics"]),
    ]
)
