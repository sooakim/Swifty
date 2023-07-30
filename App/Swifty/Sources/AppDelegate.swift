//
//  AppDelegate.swift
//  Swifty
//
//  Created by 김수아 on 2023/07/28.
//

import UIKit
import RIBs

@main final class AppDelegate: NSObject, UIApplicationDelegate{
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        mainRouter.load()
        mainRouter.interactable.activate()
        
        let window = UIWindow()
        window.rootViewController = mainRouter.viewControllable.uiviewController
        window.makeKeyAndVisible()
        self.window = window
        return true
    }
    
    // MARK: Private
    private lazy var mainRouter = {
        let builder = MainBuilder(dependency: AppComponent())
        let router = builder.build(withListener: self)
        return router
    }()
}

extension AppDelegate: MainListener{

}


final class AppComponent: Component<EmptyDependency>, MainDependency{
    
    init() {
        super.init(dependency: EmptyComponent())
    }
}
