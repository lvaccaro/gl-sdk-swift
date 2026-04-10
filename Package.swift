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
        .binaryTarget(name: "glsdkFFI", url: "https://github.com/lvaccaro/gl-sdk-swift/releases/download/d770cfa/glsdkFFI.xcframework.zip", checksum: "0993cbc1f013069e90227654e1ebce0895a0a6501dbd198d8993b3acb7e1caf8"),
        .target(name: "GreenlightSDK", dependencies: ["glsdkFFI"]),
    ]
)
