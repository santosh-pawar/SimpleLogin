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
    
    var registerView : RegisterView?
    var registerPresenter : RegisterPresenter?
    var presentedViewController : UIViewController?
    
    func presentRegisterInterfaceFromViewController(viewController:UIViewController){
        let registerView = registerViewController()
        registerView.eventHandler = registerPresenter
        registerView.modalPresentationStyle = .Custom
        registerView.transitioningDelegate = self
        viewController.presentViewController(registerView, animated: true, completion: nil)
        presentedViewController = registerView
    }
    
    
    func registerViewController() -> RegisterView{
        let storyboard = mainStoryboard()
        let registerViewController:RegisterView = storyboard.instantiateViewControllerWithIdentifier(RegisterViewControllerIdentifier) as RegisterView
        return registerViewController
    }
    
    func mainStoryboard() -> UIStoryboard {
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        return storyboard
    }
}