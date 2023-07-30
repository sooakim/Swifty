//
//  MainViewController.swift
//  Swifty
//
//  Created by 김수아 on 2023/07/30.
//  Copyright © 2023 io.github.sooakim. All rights reserved.
//

import RIBs
import RxSwift
import UIKit
import SwiftUI

protocol MainPresentableListener: AnyObject {
    // TODO: Declare properties and methods that the view controller can invoke to perform
    // business logic, such as signIn(). This protocol is implemented by the corresponding
    // interactor class.
}

final class MainViewController: UIViewController, MainPresentable, MainViewControllable {
    
    weak var listener: MainPresentableListener?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        addChild(_viewController)
        view.addSubview(_viewController.view)
        view.topAnchor.constraint(equalTo: _viewController.view.topAnchor).isActive = true
        view.leadingAnchor.constraint(equalTo: _viewController.view.leadingAnchor).isActive = true
        view.trailingAnchor.constraint(equalTo: _viewController.view.trailingAnchor).isActive = true
        view.bottomAnchor.constraint(equalTo: _viewController.view.bottomAnchor).isActive = true
    }
    
    // MARK: Private
    
    private lazy var _viewController = {
        let viewModel = MainViewModel(state: State())
        let contentView = MainView(viewModel: viewModel)
        let viewController = UIHostingController(rootView: contentView)
        viewController.view.translatesAutoresizingMaskIntoConstraints = false
        return viewController
    }()
}
