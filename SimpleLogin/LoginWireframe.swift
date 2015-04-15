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
    var presenter: Presenter?
    var routing : Routing?
    var loginView : LoginView?
    var registerView:RegisterView?
    var presentedViewController : UIViewController?
    
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

//        loginViewC.transitioningDelegate = self
        if(presentedViewController == nil){
            viewController.presentViewController(loginViewC, animated: true, completion: nil)
        }
        else{
//            viewController.dismissViewControllerAnimated(true, completion: nil)
            viewController.presentViewController(loginViewC, animated: true, completion: nil)
        }
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
}