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
    
    func showAlertMessage(message:String, withTitle:String){
        var alertController:UIAlertController = UIAlertController(title: withTitle, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        
        var okAction:UIAlertAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default) { (action:UIAlertAction!) -> Void in
            self.dismissOkAlert(alertController)
        }
        
        alertController.addAction(okAction)
        registerWireframe?.presentAlertController(alertController)
    }
    
    func dismissOkAlert(alertController:UIAlertController){
        self.registerWireframe?.dismissAlert(alertController)
    }
    
    
    func registerWithUserAndPassword(user:String,password:String,retypePassword:String){
        
        if(user.isEmpty || password.isEmpty || retypePassword.isEmpty){
            showAlertMessage("All fields are required!", withTitle: "Alert!!!")
        }
        else{
            if(password != retypePassword){
                showAlertMessage("Re-Type Password did match!", withTitle: "Alert!!!")
            }
            else{
                registerInteractor?.registerWithUser(user, password: password, completionHandler: { (success) -> Void in
                    if(success){
                        self.registerWireframe!.clearTextFields()
                        self.showAlertMessage("Registration Successful.", withTitle: "Success!!!")
                    }
                })
            }
        }
    }
    
    func login(){
        registerWireframe?.presentLoginInterface()
    }
}