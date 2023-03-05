// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "MusicLogic",
    products: [
        .library(
            name: "MusicLogic",
            targets: ["MusicLogic"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/AudioKit/Tonic.git",
            exact: "1.0.4"
        ),
    ],
    targets: [
        .target(
            name: "MusicLogic",
            dependencies: ["Tonic"]
        ),
        .testTarget(
            name: "MusicLogicTests",
            dependencies: ["MusicLogic"]
        ),
    ]
)
