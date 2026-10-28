// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Moloco-Adapter-Swift-Package",
  platforms: [.iOS(.v15)],
  products: [
    .library(name: "MolocoAdapter", targets: ["MolocoAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/moloco/moloco-sdk-ios-spm", exact: "4.12.0"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/moloco-adapter/5.21.0/ISMolocoAdapter5.21.0.zip",
      checksum: "ec6550a36ed1169e411382665e5984656cc773f759296451b98b625bbe48ba3a"
    )
  ]
)
