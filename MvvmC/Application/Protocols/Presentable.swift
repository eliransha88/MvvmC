//
//  Presentable.swift
//  MvvmC
//
//  Created by Eliran Sharabi on 03/09/2020.
//  Copyright © 2020 Eliran Sharabi. All rights reserved.
//

import UIKit

protocol Presentable {
    func toPresent() -> UIViewController?
}

// MARK: - Default Implementation
extension UIViewController: Presentable {
    
    func toPresent() -> UIViewController? {
        return self
    }
}
