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
        .binaryTarget(name: "glsdkFFI", url: "https://github.com/lvaccaro/gl-sdk-swift/releases/download/0.2.1/glsdkFFI.xcframework.zip", checksum: "cc0a06ac0902f932c08bac1658380f1fbb701ef215209eeb490426144ab2b98b"),
        .target(name: "GreenlightSDK", dependencies: ["glsdkFFI"]),
    ]
)
