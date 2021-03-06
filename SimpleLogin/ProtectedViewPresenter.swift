//
//  ProtectedViewPresenter.swift
//  SimpleLogin
//
//  Created by Santosh Pawar on 4/13/15.
//  Copyright (c) 2015 Santosh. All rights reserved.
//

import Foundation
import UIKit

class ProtectedViewPresenter:ProtectedViewInterface {
    
    var protectedViewWireframe:ProtectedViewWireframe?
    var loginPresenter:LoginPresenter?
    
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