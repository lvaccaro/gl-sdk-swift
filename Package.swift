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
        .binaryTarget(name: "glsdkFFI", url: "https://github.com/lvaccaro/gl-sdk-swift/releases/download/8b010aa7/glsdkFFI.xcframework.zip", checksum: "f0e5770eddae12df67df94382712c187a26c86b6bba153f6481021ee3061fdb0"),
        .target(name: "GreenlightSDK", dependencies: ["glsdkFFI"]),
    ]
)
