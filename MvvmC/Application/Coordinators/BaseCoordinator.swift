//
//  BaseCoordinator.swift
//  MvvmC
//
//  Created by Eliran Sharabi on 03/09/2020.
//  Copyright © 2020 Eliran Sharabi. All rights reserved.
//

import UIKit

extension Coordinators {
    class Base: NSObject, Coordinator {
        var router: Routable?
        var coordinators = [UUID: Coordinator]()
        var identifier: UUID = UUID()
        
        func start() {
            fatalError("Start method must be implemented")
        }
        
        /// Store the coordinator.
        func add(dependency coordinator: Coordinator) {
            if coordinators[coordinator.identifier] == nil {
                coordinators[coordinator.identifier] = coordinator
            }
        }
        
        func remove(dependency coordinator: Coordinator?) {
            print("coordinators count before: \(coordinators.count)")
            guard let aCoordinator = coordinator, !coordinators.isEmpty else { return }
            coordinators.removeValue(forKey: aCoordinator.identifier)
            print("coordinators count after: \(coordinators.count)")
        }
    }
}
