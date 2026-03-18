# protobuf-spm

Swift Package Manager wrapper for the [Protocol Buffers](https://github.com/protocolbuffers/protobuf) Objective-C runtime.

The `Protobuf.xcframework` is built from the official protocolbuffers release.

## Usage

Add the package in Xcode via **File → Add Package Dependencies** and enter this repository's URL, or add it to your `Package.swift`:

```swift
.package(url: "https://github.com/astmnk/protobuf-spm", from: "3.13.0")
```

Then add `"Protobuf"` to your target's dependencies.
