// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DemoPackage",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "DemoPackage",
            targets: ["DemoPackage"]
        ),
    ],
    dependencies: [
         // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/awslabs/aws-sdk-swift.git", exact: "1.7.57")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "DemoPackage",
            dependencies: [
                .product(name: "AWSSDKIdentity", package: "aws-sdk-swift"),
                .product(name: "AWSLambda", package: "aws-sdk-swift"),
                .product(name: "AWSS3", package: "aws-sdk-swift")
            ]		
        ),
        .testTarget(
            name: "DemoPackageTests",
            dependencies: ["DemoPackage"]
        ),
    ]
)
