//
//  ProtectedViewPresenter.swift
//  SimpleLogin
//
//  Created by Pawar, Santosh-CW on 4/15/15.
//  Copyright (c) 2015 Santosh. All rights reserved.
//

import Foundation
import UIKit

class ProtectedViewPresenter:ProtectedViewInterface {
    
    var protectedViewWireframe:ProtectedViewWireframe?
    var loginPresenter:Presenter?
    
    init(){
        
    }
    
    func presentProtectedViewFromViewController(viewController:UIViewController){
        protectedViewWireframe?.presentProtectedViewFromViewController(viewController)
    }
    
    func logoutFromApp() {
        protectedViewWireframe?.logout()
    }
    
    func presentLoginViewFromViewController(viewController:UIViewController){
        loginPresenter?.loginWireframe?.presentLoginViewFromViewController(viewController)
    }
}