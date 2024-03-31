// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "NGCollectionHelpers",
  platforms: [.iOS(.v17), .macOS(.v14), .visionOS(.v1), .watchOS(.v10), .tvOS(.v17)],
  products: [
    // Products define the executables and libraries a package produces, making them visible to other packages.
    .library(
      name: "NGCollectionHelpers",
      targets: ["NGCollectionHelpers"]),
  ],
  targets: [
    // Targets are the basic building blocks of a package, defining a module or a test suite.
    // Targets can depend on other targets in this package and products from dependencies.
    .target(
      name: "NGCollectionHelpers",
      swiftSettings: [
        .enableExperimentalFeature("StrictConcurrency")
      ]
    ),
    .testTarget(
      name: "NGCollectionHelpersTests",
      dependencies: ["NGCollectionHelpers"]),
  ]
)
