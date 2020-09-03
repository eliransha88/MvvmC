//
//  MainViewController.swift
//  MvvmC
//
//  Created by Eliran Sharabi on 03/09/2020.
//  Copyright © 2020 Eliran Sharabi. All rights reserved.
//

import UIKit

extension Main {
    
    class ViewController: UIViewController {
        
        var viewModel: MainViewModeling!

        init(viewModel: MainViewModeling = ViewModel()) {
            super.init(nibName: nil, bundle: nil)
            self.viewModel = viewModel
        }
        
        override func loadView() {
            super.loadView()
            setupViews()
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        func setupViews() {
            view.backgroundColor = .red
        }
    }
}
