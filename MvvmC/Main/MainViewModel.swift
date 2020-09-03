//
//  MainViewModel.swift
//  MvvmC
//
//  Created by Eliran Sharabi on 03/09/2020.
//  Copyright © 2020 Eliran Sharabi. All rights reserved.
//

import Foundation

protocol MainViewModelInput {
    //<# Add your inputs here #>
}

protocol MainViewModelOutput {
    //<#Add you outputs here#>
}

protocol MainViewModeling {
    var input: MainViewModelInput { get }
    var output: MainViewModelOutput { get }
}

extension Main {
    class ViewModel: MainViewModeling, MainViewModelInput, MainViewModelOutput {
        var input: MainViewModelInput { return self }
        var output: MainViewModelOutput { return self }
        
        var repo: MainRepository!
        
        init(repo: MainRepository = Repo()) {
            self.repo = repo
        }
   }
}
