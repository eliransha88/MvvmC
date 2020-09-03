//
//  Coordinator.swift
//  MvvmC
//
//  Created by Eliran Sharabi on 03/09/2020.
//  Copyright © 2020 Eliran Sharabi. All rights reserved.
//

import Foundation

protocol Coordinator: class {
    var identifier: UUID { get }
    func start()
}
