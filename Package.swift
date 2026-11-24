// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Moloco-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "MolocoAdapter", targets: ["MolocoAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/moloco/moloco-sdk-ios-spm", exact: "4.13.0"),
    .package(url: "https://github.com/ironsource-mobile/LevelPlay-Swift-Package", "9.0.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "MolocoAdapter",
      dependencies: [
        "MolocoAdapterSDK",
        .product(name: "MolocoSDK", package: "moloco-sdk-ios-spm"),
        .product(name: "UnityMediationSDK", package: "LevelPlay-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "MolocoAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/moloco-adapter/5.22.0/ISMolocoAdapter5.22.0.zip",
      checksum: "791a721e96cc8c645bfab337bb5f6e9f732615deaa6056e1dfd1e638cbe03c09"
    )
  ]
)
