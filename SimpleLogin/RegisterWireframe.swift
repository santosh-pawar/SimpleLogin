//
//  RegisterWireframe.swift
//  SimpleLogin
//
//  Created by Pawar, Santosh-CW on 4/14/15.
//  Copyright (c) 2015 Santosh. All rights reserved.
//

import Foundation
import UIKit

let RegisterViewControllerIdentifier = "RegisterViewController"

class RegisterWireframe: NSObject,UIViewControllerTransitioningDelegate {
    
    //MARK:Variables
    var registerView : RegisterView?
    var registerPresenter : RegisterPresenter?
    var presentedViewController : UIViewController?
    var loginWireframe:LoginWireframe?
    
    //MARK:Functions
    
    func presentAlertController(alertController:UIViewController){
        registerView?.presentViewController(alertController, animated: true, completion: nil)
    }
    
    func dismissAlert(alertController:UIViewController){
        alertController.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func presentRegisterInterfaceFromViewController(viewController:UIViewController){
        let registerViewC = registerViewController()
        registerViewC.eventHandler = registerPresenter
        registerViewC.modalPresentationStyle = .Custom
        registerViewC.transitioningDelegate = self
        registerView = registerViewC

        viewController.presentViewController(registerViewC, animated: true, completion: nil)
        presentedViewController = registerViewC
    }
    
    func registerViewController() -> RegisterView{
        let storyboard = mainStoryboard()
        let registerViewController:RegisterView = storyboard.instantiateViewControllerWithIdentifier(RegisterViewControllerIdentifier) as! RegisterView
        return registerViewController
    }
    
    func mainStoryboard() -> UIStoryboard {
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        return storyboard
    }
    
    func presentLoginInterface(){
        registerView?.dismissViewControllerAnimated(true, completion: nil)
        loginWireframe?.presentLoginViewFromViewController(registerView!)
    }
    
    func clearTextFields(){
        registerView?.clearTextFields()
    }
}