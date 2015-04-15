//
//  Interactor.swift
//  SimpleLogin
//
//  Created by Santosh Pawar on 4/13/15.
//  Copyright (c) 2015 Santosh. All rights reserved.
//

import Foundation

class LoginInteractor {
    
    var presenter:Presenter?
    var entity:Entity?
    
    var loggedInUserName = ""
    var loggedInUserPassword = ""
    
    init(){
        
    }
    
    func loginWithUser(userName:String,password:String){
        loggedInUserName = userName
        loggedInUserPassword = password
        entity?.retrieveLoginDetails()
    }
    
    func getLoginDetails(userName:AnyObject, userPassword:AnyObject){
        if(loggedInUserPassword != userPassword as String){
            presenter?.passwordDidNotMatch()
        }
        else if(loggedInUserName != userName as String){
            presenter?.userNotFound()
        }
        else{
            presenter?.showProtectedView()
        }
    }
    
    func userNotFound(){
        presenter?.userNotFound()
    }
}