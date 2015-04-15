//
//  Presenter.swift
//  SimpleLogin
//
//  Created by Santosh Pawar on 4/13/15.
//  Copyright (c) 2015 Santosh. All rights reserved.
//

import Foundation
import UIKit

class Presenter: NSObject, LoginModuleInterface {
    
    var loginView:LoginView?
    var registerView:RegisterView?
    var protectedView:ProtectedView?
    var interactor:LoginInteractor?
    var routing : Routing?
    var loginWireframe : LoginWireframe?
    
    func didUserRequestLoinWithUser(userName:String,password:String){
        interactor!.loginWithUser(userName, password: password)
    }
    
    func registerNewUser() {
        loginWireframe?.presentRegisterInterface()
    }
    
    func login() {
        //
    }
    
}