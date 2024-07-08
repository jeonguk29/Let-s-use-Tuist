import ProjectDescription

let project = Project(
    name: "Try-Tuist",
    targets: [
        .target(
            name: "Try-Tuist",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.Try-Tuist",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["Try-Tuist/Sources/**"],
            resources: ["Try-Tuist/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "Try-TuistTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.Try-TuistTests",
            infoPlist: .default,
            sources: ["Try-Tuist/Tests/**"],
            resources: [],
            dependencies: [.target(name: "Try-Tuist")]
        ),
    ]
)
