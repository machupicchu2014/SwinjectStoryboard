// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "SwinjectStoryboard",
    platforms: [
        .macOS(.v10_10),
        .iOS(.v9),
        .tvOS(.v9),
        .visionOS(.v1)
    ],
    products: [
        .library(name: "SwinjectStoryboard", targets: ["SwinjectStoryboard"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Swinject/Swinject", from: "2.9.1"),
    ],
    targets: [
        .target(
            name: "SwinjectStoryboard-ObjC",
            path: "Sources/ObjectiveC",
            publicHeadersPath: "Others"
        ),
        .target(
            name: "SwinjectStoryboard",
            dependencies: [
                "Swinject",
                "SwinjectStoryboard-ObjC"
            ],
            path: "Sources",
            exclude: [
                "ObjectiveC",
                "Info.plist"
            ]
        ),
    ]
)
