//
//  LoginModuleInterface.swift
//  SimpleLogin
//
//  Created by Santosh Pawar on 4/13/15.
//  Copyright (c) 2015 Santosh. All rights reserved.
//

import Foundation

protocol LoginModuleInterface {
    
    func loginWithUser(name:String, password:String)
    func registerNewUser()
    func showAlertMessage(message:String, withTitle:String)
    
}