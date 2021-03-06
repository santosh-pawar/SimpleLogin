//
//  RegisterViewInterface.swift
//  SimpleLogin
//
//  Created by Santosh Pawar on 4/13/15.
//  Copyright (c) 2015 Santosh. All rights reserved.
//

import Foundation

protocol RegisterViewInterface {
    
    func showAlertMessage(message:String, withTitle:String)
    func registerWithUserAndPassword(user:String,password:String,retypePassword:String)
    func login()
    
}