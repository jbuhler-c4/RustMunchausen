// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RustMunchausen",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "RustMunchausen",
            targets: ["RustMunchausen"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "RustMunchausen",
            dependencies: ["Munchausen"]),
        .testTarget(
            name: "RustMunchausenTests",
            dependencies: ["RustMunchausen"]),
        .binaryTarget(
            name: "Munchausen",
            url: "https://github.com/jbuhler-c4/RustMunchausen/releases/download/0.0.1/bundle.zip",
            checksum: "2c2348866b9ecd2b4b85efb7639641e040c3e3d1f9392f00029813a3d44c830a"
        ),
    ]
)
