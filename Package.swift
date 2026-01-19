// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let kitName = "LoggingKit"
let kitNameDynamic = "LoggingKit"

let package = Package(
    name: kitName,
    platforms: [.iOS(.v14)],
    products: [
        .library(name: kitName, targets: [kitName]),
    ],
    targets: [
        .target(name: kitName)
    ]
)
