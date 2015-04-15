//
//  RegisterPresenter.swift
//  SimpleLogin
//
//  Created by Pawar, Santosh-CW on 4/14/15.
//  Copyright (c) 2015 Santosh. All rights reserved.
//

import Foundation
import UIKit

class RegisterPresenter: NSObject,RegisterViewInterface {
    
    var registerWireframe:RegisterWireframe?
    var registerInteractor:RegisterInteractor?
    
    func showAlertMessage(message:String){
        var alertController:UIAlertController = UIAlertController(title: "Alert!!!", message: message, preferredStyle: UIAlertControllerStyle.Alert)
        
        var okAction:UIAlertAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default) { (action) -> Void in
            self.registerWireframe?.dismissAlert(alertController)
        }
        
        alertController.addAction(okAction)
        registerWireframe?.presentAlertController(alertController)
    }
    
    func registerWithUserAndPassword(user:String,password:String,retypePassword:String){
        registerInteractor?.registerWithUser(user, password: password, retypePassword: retypePassword)
    }
    
    func login(){
        registerWireframe?.presentLoginInterface()
    }
}