// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LoggingKit",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "LoggingKit", targets: ["LoggingKit"]),
    ],
    targets: [
        .target(name: "LoggingKit")
    ]
)
