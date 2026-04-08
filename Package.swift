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
        .binaryTarget(name: "glsdkFFI", url: "https://github.com/lvaccaro/gl-sdk-swift/releases/download/95f359f2/glsdkFFI.xcframework.zip", checksum: "364136aba6119216542cdb6f15805d885752ba34e9359d2d4e28bf468a8a161b"),
        .target(name: "GreenlightSDK", dependencies: ["glsdkFFI"]),
    ]
)
