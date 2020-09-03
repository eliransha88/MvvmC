//
//  Application.swift
//  MvvmC
//
//  Created by Eliran Sharabi on 03/09/2020.
//  Copyright © 2020 Eliran Sharabi. All rights reserved.
//

import UIKit

private let test_mode = true

// MARK: - Application Namespace
enum Application {}

extension Application {
    class Coordinator: Coordinators.Base {
        
        var window: UIWindow?
        lazy var navigation = UINavigationController()
        
        init(router: Routable? = nil) {
            super.init()
            self.router = router ?? Router(rootController: self.navigation)
            
            self.window = UIWindow(frame: UIScreen.main.bounds)
            self.window?.backgroundColor = .white
            self.window?.rootViewController = navigation
            
            window?.makeKeyAndVisible()
        }
        
        override func start() {
            let  mainCoordinator = Main.Coordinator(router: router!)
            mainCoordinator.finishFlow  = { [weak self, weak mainCoordinator] in
                self?.start()
                self?.remove(dependency: mainCoordinator)
            }

            add(dependency: mainCoordinator)
            mainCoordinator.start()
        }
    }
}
