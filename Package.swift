// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorLaunchNative",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "CapacitorLaunchNative",
            targets: ["LaunchNativePlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "LaunchNativePlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/LaunchNativePlugin"),
        .testTarget(
            name: "LaunchNativePluginTests",
            dependencies: ["LaunchNativePlugin"],
            path: "ios/Tests/LaunchNativePluginTests")
    ]
)