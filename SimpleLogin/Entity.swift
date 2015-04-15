//
//  Entity.swift
//  SimpleLogin
//
//  Created by Santosh Pawar on 4/13/15.
//  Copyright (c) 2015 Santosh. All rights reserved.
//

import Foundation

class Entity {
    
    var registerInteractor:RegisterInteractor?
    
    func storeUserDetails(user:String, password:String, completionHandler:(success:Bool) -> Void){
        NSUserDefaults.standardUserDefaults().setObject(user, forKey: "userEmail")
        NSUserDefaults.standardUserDefaults().setObject(password, forKey: "userPassword")
        NSUserDefaults.standardUserDefaults().synchronize()
        completionHandler(success:true)
    }
}