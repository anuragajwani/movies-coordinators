//
//  AppCoordinator.swift
//  Movies-Coordinators
//
//  Created by Anurag Ajwani on 08/05/2017.
//  Copyright © 2017 example. All rights reserved.
//

import Foundation
import UIKit

final class AppCoordinator {
    
    private let navigationController: UINavigationController
    
    private var childCoordinator: MoviesViewCoordinator!
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
        let moviesViewCoordinator = MoviesViewCoordinator(
            navigationController: self.navigationController
        )
        
        self.childCoordinator = moviesViewCoordinator
        self.childCoordinator.start()
    }
}
