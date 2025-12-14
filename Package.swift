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
        .binaryTarget(name: "glsdkFFI", url: "https://github.com/lvaccaro/gl-sdk-swift/releases/download/202512-gl-sdk-swift/glsdkFFI.xcframework.zip", checksum: "cc44cc34c3f2a73c525cb86f395526cb85be5b4429642bbb05eae5842cbfe56a"),
        .target(name: "GreenlightSDK", dependencies: ["glsdkFFI"]),
    ]
)
