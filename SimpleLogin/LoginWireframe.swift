//
//  LoginWireframe.swift
//  SimpleLogin
//
//  Created by Santosh Pawar on 4/13/15.
//  Copyright (c) 2015 Santosh. All rights reserved.
//

import Foundation
import UIKit

let LoginViewControllerIdentifier = "LoginViewController"

class LoginWireframe: NSObject {
    
    var registerWireframe : RegisterWireframe?
    var protectedViewPresenter:ProtectedViewPresenter?
    
    var loginPresenter: LoginPresenter?
    var mainWireframe : MainWireframe?
    var loginView : LoginView?
    var presentedViewController : UIViewController?

    func presentAlertController(alertController:UIViewController){
        loginView?.presentViewController(alertController, animated: true, completion: nil)
    }
    
    func dismissAlert(alertController:UIViewController){
        alertController.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func presentLoginViewFromWindow(window: UIWindow){
        let viewController = loginViewControllerFromStoryboard()
        viewController.eventHandler = loginPresenter
        loginView = viewController
        mainWireframe?.showRootViewController(viewController, inWindow: window)
    }
    
    func presentLoginViewFromViewController(viewController:UIViewController){
        let loginViewC = loginViewControllerFromStoryboard()
        loginViewC.eventHandler = loginPresenter
        loginViewC.modalPresentationStyle = .OverFullScreen

        viewController.presentViewController(loginViewC, animated: true, completion: nil)
        presentedViewController = loginViewC
    }
    
    func loginViewControllerFromStoryboard() -> LoginView {
        let storyboard = mainStoryboard()
        let viewController = storyboard.instantiateViewControllerWithIdentifier(LoginViewControllerIdentifier) as! LoginView
        return viewController
    }
    
    func mainStoryboard() -> UIStoryboard {
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        return storyboard
    }
    
    func presentRegisterInterface(){
        loginView?.dismissViewControllerAnimated(true, completion: nil)
        registerWireframe?.presentRegisterInterfaceFromViewController(loginView!)
    }
    
    func clearTextFields(){
        loginView?.clearTextFields()
    }
    
    //MARK: Protected View methods
    func presentProtectedView(){
        loginView?.dismissViewControllerAnimated(true, completion: nil)
        protectedViewPresenter?.presentProtectedViewFromViewController(loginView!)
    }
}