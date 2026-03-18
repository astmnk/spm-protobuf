// swift-tools-version: 5.4

import PackageDescription

struct PackageMetadata {
    static let version: String = "3.13.0"
    static let checksum: String = "7bc99f94f2a71c918b14dfd6129be50bdca9804da24b7d558a3f9d5cfa0ed644"
}

let package = Package(
    name: "protobuf-spm",
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
            url: "https://github.com/astmnk/protobuf-spm/releases/download/\(PackageMetadata.version)/Protobuf.xcframework.zip",
            checksum: PackageMetadata.checksum)
    ]
)
