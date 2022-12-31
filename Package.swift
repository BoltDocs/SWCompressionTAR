// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SWCompressionTAR",
    platforms: [
        .macOS(.v10_13),
        .iOS(.v11),
        .tvOS(.v11),
        .watchOS(.v4),
        // TODO: Enable after upgrading to Swift 5.9.
        // .visionOS(.v1)
    ],
    products: [
        .library(
            name: "SWCompressionTAR",
            targets: ["SWCompressionTAR"]),
    ],
    dependencies: [
        .package(name: "BitByteData", url: "https://github.com/tsolomko/BitByteData.git",
                 .exact("2.0.4")),
    ],
    targets: [
        .target(
            name: "SWCompressionTAR",
            dependencies: ["BitByteData"],
            path: "Sources",
            sources: ["Common", "TAR"],
            resources: [.copy("PrivacyInfo.xcprivacy")]),
    ],
    swiftLanguageVersions: [.v5]
)
