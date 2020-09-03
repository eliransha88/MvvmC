//
//  MainCoordinator.swift
//  MvvmC
//
//  Created by Eliran Sharabi on 03/09/2020.
//  Copyright © 2020 Eliran Sharabi. All rights reserved.
//

import UIKit

protocol MainCoordinatorOutput: class {
    typealias FinishClosure = () -> Void
    
    var finishFlow: FinishClosure! { get set }
}

extension Main {
    
    class Coordinator: Coordinators.Base, MainCoordinatorOutput {
        
        var finishFlow: FinishClosure!
        var viewModel: MainViewModeling!
        
        init(viewModel: MainViewModeling = Main.ViewModel(), router: Routable) {
            super.init()
            self.viewModel = viewModel
            self.router = router
        }

        override func start() {
            let vc = ViewController(viewModel: viewModel)
            // router?.push(vc, animated: true)
            // or
            router?.setRootModule(vc)
        }
    }
}
