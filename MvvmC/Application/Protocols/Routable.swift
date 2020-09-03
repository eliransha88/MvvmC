//
//  Application.Router.swift
//  MvvmC
//
//  Created by Eliran Sharabi on 03/09/2020.
//  Copyright © 2020 Eliran Sharabi. All rights reserved.
//

import UIKit

// MARK: - Application Router | Control the navigation.
/// Router for navigation - Passive operation just for routing..

internal protocol Routable: Presentable {

    var showNavigationBar: Bool { get set }
    
    func setRootModule(_ module: Presentable?)
    func setRootModule(_ module: Presentable?, animated: Bool)
    
    func present(_ module: Presentable?)
    func present(_ module: Presentable?, animated: Bool)
    
    func push(_ module: Presentable?)
    func push(_ module: Presentable?, animated: Bool)

    func dismissModule(completion: (() -> Void)?)
    func dismissModule(animated: Bool, completion: (() -> Void)?)
    
    @discardableResult func popToRootModule() -> Bool
    @discardableResult func popToRootModule(animated: Bool) -> Bool
    
    @discardableResult func popModule() -> Bool
    @discardableResult func popModule(animated: Bool) -> Bool
    
    @discardableResult func popTo(module: Presentable) -> Bool
    @discardableResult func popTo(module: Presentable, animated: Bool) -> Bool
}
