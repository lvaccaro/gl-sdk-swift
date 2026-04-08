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
        .binaryTarget(name: "glsdkFFI", url: "https://github.com/Blockstream/gl-sdk-swift/releases/download/202604-gl-sdk-swift/glsdkFFI.xcframework.zip", checksum: "5212d5cb11759ec8dbb2adeab77bedc665818904a7dfbc44f073be989e766bfc"),
        .target(name: "GreenlightSDK", dependencies: ["glsdkFFI"]),
    ]
)
