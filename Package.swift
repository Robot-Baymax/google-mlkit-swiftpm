// swift-tools-version: 5.9

import PackageDescription

let package = Package(
  name: "GoogleMLKitSwiftPM",
  platforms: [.iOS(.v14)],
  products: [
    .library(
      name: "MLKitBarcodeScanning",
      targets: ["MLKitBarcodeScanning", "MLImage", "MLKitVision", "Common"]),
    .library(
      name: "MLKitFaceDetection",
      targets: ["MLKitFaceDetection", "MLImage", "MLKitVision", "Common"]),
  ],
  dependencies: [
    .package(url: "https://github.com/google/promises.git", exact: "2.4.0"),
    .package(url: "https://github.com/google/GoogleDataTransport.git", exact: "10.1.0"),
    .package(url: "https://github.com/google/GoogleUtilities.git", exact: "8.1.0"),
    .package(url: "https://github.com/google/gtm-session-fetcher.git", exact: "3.5.0"),
    .package(url: "https://github.com/firebase/nanopb.git", exact: "2.30910.0"),
  ],
  targets: [
    // For debugging
    // .binaryTarget(
    //   name: "MLImage",
    //   path: "GoogleMLKit/MLImage.xcframework"),
    // .binaryTarget(
    //   name: "MLKitBarcodeScanning",
    //   path: "GoogleMLKit/MLKitBarcodeScanning.xcframework"),
    // .binaryTarget(
    //   name: "MLKitCommon",
    //   path: "GoogleMLKit/MLKitCommon.xcframework"),
    // .binaryTarget(
    //   name: "MLKitFaceDetection",
    //   path: "GoogleMLKit/MLKitFaceDetection.xcframework"),
    // .binaryTarget(
    //   name: "MLKitVision",
    //   path: "GoogleMLKit/MLKitVision.xcframework"),
    // .binaryTarget(
    //   name: "GoogleToolboxForMac",
    //   path: "GoogleMLKit/GoogleToolboxForMac.xcframework"),

    .binaryTarget(
      name: "MLImage",
      url:
        "https://github.com/Robot-Baymax/google-mlkit-swiftpm/releases/download/7.0.1/MLImage.xcframework.zip",
      checksum: "a7cf2cc96233ea73ecd750ae9949a68837c09d2bfc6f5884aa031be622f4c3ac"),
    .binaryTarget(
      name: "MLKitBarcodeScanning",
      url:
        "https://github.com/Robot-Baymax/google-mlkit-swiftpm/releases/download/7.0.1/MLKitBarcodeScanning.xcframework.zip",
      checksum: "a427b40a6cdefc3d4cf3f2c5d439e18cc214cdd4251eb19e1d0c5b2bde4dfc58"),
    .binaryTarget(
      name: "MLKitCommon",
      url:
        "https://github.com/Robot-Baymax/google-mlkit-swiftpm/releases/download/7.0.1/MLKitCommon.xcframework.zip",
      checksum: "6e75a53c088e22b3fce8aa659f17cb3ed5665b76d908a7467747790aa84542d3"),
    .binaryTarget(
      name: "MLKitFaceDetection",
      url:
        "https://github.com/Robot-Baymax/google-mlkit-swiftpm/releases/download/7.0.1/MLKitFaceDetection.xcframework.zip",
      checksum: "23f0bf6c64fbccf034018aa885ffff1b7c616a9c8c61bdba36e80c29fcba1a18"),
    .binaryTarget(
      name: "MLKitVision",
      url:
        "https://github.com/Robot-Baymax/google-mlkit-swiftpm/releases/download/7.0.1/MLKitVision.xcframework.zip",
      checksum: "1bdd96341497427d2cd93e41d79d8c6fe2e27289a5046d38a0a5dba16adde5fb"),
    .binaryTarget(
      name: "GoogleToolboxForMac",
      url:
        "https://github.com/Robot-Baymax/google-mlkit-swiftpm/releases/download/7.0.1/GoogleToolboxForMac.xcframework.zip",
      checksum: "8926e2706c6978175bc4841d22f521e2ae0e8c065b86ff1880b561d304a82da7"),
    .target(
      name: "Common",
      dependencies: [
        "MLKitCommon",
        "GoogleToolboxForMac",
        .product(name: "GULAppDelegateSwizzler", package: "GoogleUtilities"),
        .product(name: "GULEnvironment", package: "GoogleUtilities"),
        .product(name: "GULLogger", package: "GoogleUtilities"),
        .product(name: "GULMethodSwizzler", package: "GoogleUtilities"),
        .product(name: "GULNSData", package: "GoogleUtilities"),
        .product(name: "GULNetwork", package: "GoogleUtilities"),
        .product(name: "GULReachability", package: "GoogleUtilities"),
        .product(name: "GULUserDefaults", package: "GoogleUtilities"),
        .product(name: "GTMSessionFetcher", package: "gtm-session-fetcher"),
        .product(name: "GoogleDataTransport", package: "GoogleDataTransport"),
        .product(name: "nanopb", package: "nanopb"),
        .product(name: "FBLPromises", package: "promises"),
      ]),
  ]
)
