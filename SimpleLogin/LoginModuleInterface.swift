//
//  LoginModuleInterface.swift
//  SimpleLogin
//
//  Created by Pawar, Santosh-CW on 4/14/15.
//  Copyright (c) 2015 Santosh. All rights reserved.
//

import Foundation

protocol LoginModuleInterface {
    
    func loginWithUser(name:String, password:String)
    func registerNewUser()
    func showAlertMessage(message:String, withTitle:String)
    
}