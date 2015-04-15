//
//  MainWireframe.swift
//  SimpleLogin
//
//  Created by Pawar, Santosh-CW on 4/15/15.
//  Copyright (c) 2015 Santosh. All rights reserved.
//

import Foundation
import UIKit

class MainWireframe {
    
    func showRootViewController(viewController: UIViewController, inWindow: UIWindow) {
        let navigationController = navigationControllerFromWindow(inWindow)
        navigationController.viewControllers = [viewController]
    }
    
    func navigationControllerFromWindow(window: UIWindow) -> UINavigationController {
        let navigationController = window.rootViewController as UINavigationController
        return navigationController
    }
}