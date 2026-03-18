// swift-tools-version: 5.4

import PackageDescription

struct PackageMetadata {
    static let version: String = "3.13.0"
    static let checksum: String = "4a3e06e1bbe87fb45ce25f141038037d2c41504742a62894acec61ba6f880b85"
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
