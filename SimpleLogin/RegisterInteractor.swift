//
//  RegisterInteractor.swift
//  SimpleLogin
//
//  Created by Santosh Pawar on 4/14/15.
//  Copyright (c) 2015 Santosh. All rights reserved.
//

import Foundation

class RegisterInteractor {
    
    var entity:Entity?
    
    init(){
        
    }
    
    func registerWithUser(user:String,password:String, completionHandler:(success:Bool) -> Void) {
        entity?.storeUserDetails(user, password: password, completionHandler: completionHandler)
    }    
}