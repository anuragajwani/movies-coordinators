//
//  AppDelegate.swift
//  Movies-Coordinators
//
//  Created by Anurag Ajwani on 27/03/2017.
//  Copyright © 2017 example. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var appCoordinator: AppCoordinator!


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        let navController = UINavigationController()
        window.rootViewController = navController
        
        self.appCoordinator = AppCoordinator(navigationController: navController)
        self.appCoordinator.start()
        
        window.makeKeyAndVisible()
        
        return true
    }
}

