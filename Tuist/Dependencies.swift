//
//  Dependencies.swift
//  Config
//
//  Created by 김수아 on 2023/07/29.
//

import ProjectDescription

let dependenceis = Dependencies(
    swiftPackageManager: SwiftPackageManagerDependencies(
        [
            .remote(url: "https://github.com/uber/RIBs", requirement: .upToNextMinor(from: "0.15.0"))
        ],
        productTypes: [
            "RIBs": .staticFramework,
            "RxSwift": .staticFramework,
            "RxRelay": .staticFramework
        ]
    ),
    platforms: [.iOS]
)
