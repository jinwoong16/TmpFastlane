import ProjectDescription

let project = Project(
    name: "FirebaseService",
    settings: .settings(
        base: ["DEVELOPMENT_TEAM": "ERT3ZH7BA7", "CODE_SIGN_STYLE": "Automatic"],
        debug: [:],
        release: [:],
        defaultSettings: .recommended
    ),
    targets: [
        .target(
            name: "FirebaseService",
            destinations: .iOS,
            product: .staticFramework,
            bundleId: "co.kr.devwoong.FirebaseService",
            sources: ["Source/**"],
            dependencies: [
                .external(name: "FirebaseAuth"),
                .external(name: "FirebaseFirestore"),
            ]
        )
    ]
)
