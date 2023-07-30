import ProjectDescription
import ProjectDescriptionHelpers

// MARK: - Project


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
            sources: ["\(appName)/Sources/**"],
            resources: ["\(appName)/Resources/**"],
            dependencies: [
                .project(target: "ExternalModuleManager", path: "../Projects/ExternalModuleManager")
            ]
        ),
        Target(
            name: "\(appName)Tests",
            platform: .iOS,
            product: .unitTests,
            bundleId: "\(organizationName).\(appName)Tests",
            infoPlist: .default,
            sources: ["\(appName)Tests/Sources/**"],
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
            sources: ["\(appName)UITests/Sources/**"],
            resources: [],
            dependencies: [
                .target(name: appName)
            ]
        )
    ]
)
