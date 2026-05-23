// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "GenieeMediationLine",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "GenieeMediationLine",
            targets: ["GenieeMediationLineTarget"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/unigeniee/swift-package-manager-geniee-ios-sdk.git",
            from: "8.4.3"
        ),
        .package(
            url: "https://github.com/ly-ads-network/swift-package-manager-fivead.git",
            exact: "3.0.1"
        )
    ],
    targets: [
        .target(
            name: "GenieeMediationLineTarget",
            dependencies: [
                "GenieeMediationLine",
                .product(name: "GNAdSDK", package: "swift-package-manager-geniee-ios-sdk"),
                .product(name: "FiveAd", package: "swift-package-manager-fivead")
            ],
            path: "Sources/GenieeMediationLineTarget"
        ),
        .binaryTarget(
            name: "GenieeMediationLine",
            url: "https://github.com/unigeniee/geniee-ios-mediation-line/releases/download/3.0.100/GenieeMediationLine.3.0.1.0.zip",
            checksum: "ae9584330588c71a6619c1152a964d241c4cc558b88eb80e10b50897d5843b70"
        )
    ]
)
