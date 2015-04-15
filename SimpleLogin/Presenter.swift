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
    
    //MARK: Login Methods

    func userNotFound(){
        self.showAlertMessage("Could not find this user. Please login with registerd User Name", withTitle: "User Not Registered!")
        loginWireframe?.clearTextFields()
    }
    
    func passwordDidNotMatch(){
        self.showAlertMessage("Did not match the entered password. Please try again!", withTitle: "Wrong Password!")
    }
    
    func loginWithUser(name:String, password:String){
        if(name.isEmpty || password.isEmpty){
            self.showAlertMessage("All fields are required!", withTitle: "Alert!!!")
        }
        else{
            interactor?.loginWithUser(name, password: password)
        }
    }
    
    func registerNewUser() {
        loginWireframe?.presentRegisterInterface()
    }
    
    func showProtectedView(){
        loginWireframe?.clearTextFields()
        loginWireframe?.presentProtectedView()
    }
    
    //MARK:Alert methods
    func showAlertMessage(message:String, withTitle:String){
        var alertController:UIAlertController = UIAlertController(title: withTitle, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        
        var okAction:UIAlertAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default)  { (action:UIAlertAction!) -> Void in
            self.dismissOkAlert(alertController)
        }
        
        alertController.addAction(okAction)
        loginWireframe?.presentAlertController(alertController)
    }
    
    func dismissOkAlert(alertController:UIAlertController){
        self.loginWireframe?.dismissAlert(alertController)
    }
    
}