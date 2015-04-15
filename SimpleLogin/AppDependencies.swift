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
        let registerInteractor = RegisterInteractor()
        let entity = Entity()
        
        presenter.loginWireframe = loginWireframe
        loginWireframe.registerWireframe = registerWireframe
        loginWireframe.presenter = presenter
        loginWireframe.routing = routing
        
        registerPresenter.registerWireframe = registerWireframe
        registerWireframe.loginWireframe = loginWireframe
        registerWireframe.registerPresenter = registerPresenter
        registerPresenter.registerInteractor = registerInteractor
        registerInteractor.registerPresenter = registerPresenter
        registerInteractor.entity = entity
        entity.registerInteractor = registerInteractor
    }
    
    
    func installRootViewControllerIntoWindow(window: UIWindow) {
        loginWireframe.presentLoginViewFromWindow(window)
    }
    
}