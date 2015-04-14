//
//  AppDependencies.swift
//  SimpleLogin
//
//  Created by Pawar, Santosh-CW on 4/14/15.
//  Copyright (c) 2015 Santosh. All rights reserved.
//

import Foundation
import UIKit

class AppDependencies {
    
    var loginWireframe = LoginWireframe()
    
    init(){
        configureDependencies()
    }
    
    func configureDependencies(){
        
        let routing = Routing()
        let presenter = Presenter()
        
        let registerWireframe = RegisterWireframe()
        let registerPresenter = RegisterPresenter()
        
        
        presenter.loginWireframe = loginWireframe
        loginWireframe.registerWireframe = registerWireframe
        loginWireframe.presenter = presenter
        loginWireframe.routing = routing
        
        registerWireframe.registerPresenter = registerPresenter
        registerPresenter.registerWireframe = registerWireframe
        
    }
    
    
    func installRootViewControllerIntoWindow(window: UIWindow) {
        loginWireframe.presentLoginViewFromWindow(window)
    }
    
}