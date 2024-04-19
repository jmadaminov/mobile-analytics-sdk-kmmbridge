// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/jmadaminov/mobile-analytics-sdk-kmmbridge/uz/mj/analytics/allshared-kmmbridge/0.1.0/allshared-kmmbridge-0.1.0.zip"
let remoteKotlinChecksum = "5a979fbd4f06bc75e3732ebba98e1cc7619c742ecd2d3bb98e1dbb950d07a5c3"
let packageName = "allshared"
// END KMMBRIDGE BLOCK

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)