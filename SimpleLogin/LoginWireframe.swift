//
//  LoginWireframe.swift
//  SimpleLogin
//
//  Created by Pawar, Santosh-CW on 4/14/15.
//  Copyright (c) 2015 Santosh. All rights reserved.
//

import Foundation
import UIKit

let LoginViewControllerIdentifier = "LoginViewController"

class LoginWireframe: NSObject {
    
    var registerWireframe : RegisterWireframe?
    var protectedViewWireframe:ProtectedViewWireframe?
    var protectedViewPresenter:ProtectedViewPresenter?
    
    var presenter: Presenter?
    var routing : Routing?
    var loginView : LoginView?
    var registerView:RegisterView?
    var presentedViewController : UIViewController?

    func presentAlertController(alertController:UIViewController){
        loginView?.presentViewController(alertController, animated: true, completion: nil)
    }
    
    func dismissAlert(alertController:UIViewController){
        alertController.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func presentLoginViewFromWindow(window: UIWindow){
        let viewController = loginViewControllerFromStoryboard()
        viewController.eventHandler = presenter
        loginView = viewController
        routing?.showRootViewController(viewController, inWindow: window)
    }
    
    func presentLoginViewFromViewController(viewController:UIViewController){
        let loginViewC = loginViewControllerFromStoryboard()
        loginViewC.eventHandler = presenter
        loginViewC.modalPresentationStyle = .OverFullScreen

        viewController.presentViewController(loginViewC, animated: true, completion: nil)
        presentedViewController = loginViewC
    }
    
    func loginViewControllerFromStoryboard() -> LoginView {
        let storyboard = mainStoryboard()
        let viewController = storyboard.instantiateViewControllerWithIdentifier(LoginViewControllerIdentifier) as LoginView
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