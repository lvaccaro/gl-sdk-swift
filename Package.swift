// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "glsdk",
    platforms: [
        .macOS(.v12),
        .iOS(.v13),
    ],
    products: [
        .library(name: "GreenlightSDK", targets: ["glsdkFFI", "GreenlightSDK"]),
    ],
    targets: [
        .binaryTarget(name: "glsdkFFI", url: "https://github.com/lvaccaro/gl-sdk-swift/releases/download/e6ce8a75/glsdkFFI.xcframework.zip", checksum: "2326193dcb6d40eb4a5131b96710524a3e0040fd03ed84c2fa4baad27b3382b2"),
        .target(name: "GreenlightSDK", dependencies: ["glsdkFFI"]),
    ]
)
