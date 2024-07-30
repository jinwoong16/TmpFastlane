import ProjectDescription

let project = Project(
    name: "FirebaseExample",
    settings: .settings(
        base: ["DEVELOPMENT_TEAM": "ERT3ZH7BA7", "CODE_SIGN_STYLE": "Automatic"],
        debug: [:],
        release: [:],
        defaultSettings: .recommended
    ),
    targets: [
        .target(
            name: "FirebaseExample",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.FirebaseExample",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["FirebaseExample/Sources/**"],
            resources: ["FirebaseExample/Resources/**"],
            dependencies: [
                .project(target: "FirebaseService", path: "FirebaseService")
            ]
        ),
        .target(
            name: "FirebaseExampleTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.FirebaseExampleTests",
            infoPlist: .default,
            sources: ["FirebaseExample/Tests/**"],
            resources: [],
            dependencies: [.target(name: "FirebaseExample")]
        ),
    ]
)
