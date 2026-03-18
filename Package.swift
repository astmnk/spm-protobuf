// swift-tools-version: 5.4

import PackageDescription

struct PackageMetadata {
    static let version: String = "3.13.0"
    static let checksum: String = "a47a90feaf1c186ae249369d0da1cb7d3dfed23ef049e669af894d3f5e2ebf77"
}

let package = Package(
    name: "spm-protobuf",
    platforms: [
        .iOS(.v10),
        .tvOS(.v10),
        .macOS(.v10_10)
    ],
    products: [
        .library(
            name: "Protobuf",
            targets: ["Protobuf"]),
    ],
    targets: [
        .binaryTarget(
            name: "Protobuf",
            url: "https://github.com/astmnk/spm-protobuf/releases/download/\(PackageMetadata.version)/Protobuf.xcframework.zip",
            checksum: PackageMetadata.checksum)
    ]
)
