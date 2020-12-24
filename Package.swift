// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "floaters",
    
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "floaters",
            targets: ["floaters"]
        )
    ],
    targets: [
        .target(
            name: "floaters",
            path: "Source"
        )
    ],
    swiftLanguageVersions: [.v5]
)
