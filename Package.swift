// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Moloco-Adapter-Swift-Package",
  platforms: [.iOS(.v15)],
  products: [
    .library(name: "MolocoAdapter", targets: ["MolocoAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/moloco/moloco-sdk-ios-spm", exact: "4.11.0"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/moloco-adapter/5.19.0/ISMolocoAdapter5.19.0.zip",
      checksum: "480c9fecfca030b4979509e2a9b93729e3cd46b21c01459c5c8f7b24b98270cc"
    )
  ]
)
