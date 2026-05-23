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
            url: "https://github.com/unigeniee/geniee-ios-mediation-line/releases/download/8.4.100/GenieeMediationLine.8.4.1.0.zip",
            checksum: "468e7ba5bcd01946eef862248cd1d4522a6e73c9316877c1ff4c73e62c86cc23"
        )
    ]
)
