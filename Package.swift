// swift-tools-version: 5.4

import PackageDescription

struct PackageMetadata {
    static let version: String = "0.0.0"
    static let checksum: String = "0000000000000000000000000000000000000000000000000000000000000000"
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
            url: "https://github.com/astmnk/spm-protobuf/releases/download/v\(PackageMetadata.version)/Protobuf.xcframework.zip",
            checksum: PackageMetadata.checksum)
    ]
)
