// swift-tools-version: 5.4

import PackageDescription

struct PackageMetadata {
    static let version: String = "3.13.0"
    static let checksum: String = "2018a381025037d9732b8a4ae8377e8799e90e0604636ba25f6d58fe0cc76c47"
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
