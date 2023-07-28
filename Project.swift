import ProjectDescription
import ProjectDescriptionHelpers

// MARK: - Project

let organizationName = "io.github.sooakim"
let appName = "Swifty"
let infoPlist: [String: InfoPlist.Value] = [
    "CFBundleShortVersionString": "1.0",
    "CFBundleVersion": "1"
]

let project = Project(
    name: appName,
    organizationName: organizationName,
    targets: [
        Target(
            name: appName,
            platform: .iOS,
            product: .app,
            bundleId: "\(organizationName).\(appName)",
            infoPlist: .extendingDefault(with: infoPlist),
            sources: ["App/\(appName)/Sources/**"],
            resources: ["App/\(appName)/Resources/**"],
            dependencies: []
        ),
        Target(
            name: "\(appName)Tests",
            platform: .iOS,
            product: .unitTests,
            bundleId: "\(organizationName).\(appName)Tests",
            infoPlist: .default,
            sources: ["App/\(appName)Tests/Sources/**"],
            resources: [],
            dependencies: [
                .target(name: appName)
            ]
        ),
        Target(
            name: "\(appName)UITests",
            platform: .iOS,
            product: .uiTests,
            bundleId: "\(organizationName).\(appName)UITests",
            infoPlist: .default,
            sources: ["App/\(appName)UITests/Sources/**"],
            resources: [],
            dependencies: [
                .target(name: appName)
            ]
        )
    ]
)
