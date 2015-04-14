//
//  Presenter.swift
//  SimpleLogin
//
//  Created by Santosh Pawar on 4/13/15.
//  Copyright (c) 2015 Santosh. All rights reserved.
//

import Foundation
import UIKit

class Presenter {
    
    var loginView:LoginView!
    var interactor:Interactor!
    var routing:Routing!
    var registerView:RegisterView!
    
    init(){
        
    }
    
    func didUserRequestLoinWithUser(userName:String,password:String){
        self.interactor.loginWithUser(userName, password: password)
    }
    
    func didUserTapRegister(){
        routing?.navigateToRegisterView(registerView)
    }
}