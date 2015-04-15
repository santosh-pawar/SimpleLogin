//
//  Entity.swift
//  SimpleLogin
//
//  Created by Santosh Pawar on 4/13/15.
//  Copyright (c) 2015 Santosh. All rights reserved.
//

import Foundation

class Entity {
    
    var loginInteractor:LoginInteractor?
    
    init(){
        
    }
    
    func storeUserDetails(user:String, password:String, completionHandler:(success:Bool) -> Void){
        NSUserDefaults.standardUserDefaults().setObject(user, forKey: "userEmail")
        NSUserDefaults.standardUserDefaults().setObject(password, forKey: "userPassword")
        NSUserDefaults.standardUserDefaults().synchronize()
        completionHandler(success:true)
    }
    
    func retrieveLoginDetails(){
        let userName: AnyObject? = NSUserDefaults.standardUserDefaults().valueForKey("userEmail")
        let userPassword: AnyObject? = NSUserDefaults.standardUserDefaults().valueForKey("userPassword")
        
        if(userName == nil){
            loginInteractor!.userNotFound()
        }
        else{
            loginInteractor!.getLoginDetails(userName!, userPassword: userPassword!)
        }
    }
}