// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "SWCompressionTAR",
    platforms: [
        .macOS(.v10_13),
        .iOS(.v11),
        .tvOS(.v11),
        .watchOS(.v4)
    ],
    products: [
        .library(
            name: "SWCompressionTAR",
            targets: ["SWCompressionTAR"]),
    ],
    dependencies: [
        .package(name: "BitByteData", url: "https://github.com/tsolomko/BitByteData",
                 from: "2.0.0"),
    ],
    targets: [
        .target(
            name: "SWCompressionTAR",
            dependencies: ["BitByteData"],
            path: "Sources",
            sources: ["Common", "TAR"]),
    ],
    swiftLanguageVersions: [.v5]
)
