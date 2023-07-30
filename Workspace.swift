import ProjectDescription
import ProjectDescriptionHelpers

let workspace = Workspace(
    name: appName,
    projects: [
        "App/**",
        "Projects/**"
    ]
)
