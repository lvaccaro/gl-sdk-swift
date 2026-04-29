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
        .binaryTarget(name: "glsdkFFI", url: "https://github.com/lvaccaro/gl-sdk-swift/releases/download/e60065b/glsdkFFI.xcframework.zip", checksum: "f656c124a1567dc60a41b589b82375e88915e0948ecbcc25f4cbd3ee5b39161b"),
        .target(name: "GreenlightSDK", dependencies: ["glsdkFFI"]),
    ]
)
