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
        
        let mainWireframe = MainWireframe()
        let loginPresenter = LoginPresenter()
        let loginInteractor = LoginInteractor()
        
        let registerWireframe = RegisterWireframe()
        let registerPresenter = RegisterPresenter()
        let registerInteractor = RegisterInteractor()
        
        let entity = Entity()
        
        let protectedViewWireframe = ProtectedViewWireframe()
        let protectedViewPresenter = ProtectedViewPresenter()
        
        loginPresenter.loginWireframe = loginWireframe
        loginWireframe.registerWireframe = registerWireframe
        loginWireframe.loginPresenter = loginPresenter
        loginWireframe.mainWireframe = mainWireframe
        loginPresenter.loginInteractor = loginInteractor
        entity.loginInteractor = loginInteractor
        loginInteractor.entity = entity
        loginInteractor.presenter = loginPresenter
        
        loginWireframe.protectedViewPresenter = protectedViewPresenter
        protectedViewPresenter.protectedViewWireframe = protectedViewWireframe
        protectedViewWireframe.protectedViewPresenter = protectedViewPresenter
        protectedViewPresenter.loginPresenter = loginPresenter
        
        registerPresenter.registerWireframe = registerWireframe
        registerWireframe.loginWireframe = loginWireframe
        registerWireframe.registerPresenter = registerPresenter
        registerPresenter.registerInteractor = registerInteractor
        registerInteractor.entity = entity
    }
    
    
    func installRootViewControllerIntoWindow(window: UIWindow) {
        loginWireframe.presentLoginViewFromWindow(window)
    }
    
}