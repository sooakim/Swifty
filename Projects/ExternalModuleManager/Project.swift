import ProjectDescription
import ProjectDescriptionHelpers

let name = "ExternalModuleManager"

let project = Project(
    name: name,
    organizationName: organizationName,
    targets: [
        Target(
            name: name,
            platform: .iOS,
            product: .framework,
            bundleId: "\(organizationName).\(appName).\(name)",
            infoPlist: .default,
            sources: ["./Sources/**"],
            resources: ["./Resources/**"],
            dependencies: [
                .external(name: "RIBs"),
                .sdk(name: "SwiftUI", type: .framework)
            ]
        )
    ]
)

