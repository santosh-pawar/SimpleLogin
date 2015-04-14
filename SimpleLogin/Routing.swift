//
//  Routing.swift
//  SimpleLogin
//
//  Created by Santosh Pawar on 4/13/15.
//  Copyright (c) 2015 Santosh. All rights reserved.
//

import Foundation
import UIKit


class Routing {
    
    func showRootViewController(viewController: UIViewController, inWindow: UIWindow) {
        let navigationController = navigationControllerFromWindow(inWindow)
        navigationController.viewControllers = [viewController]
    }
    
    func navigationControllerFromWindow(window: UIWindow) -> UINavigationController {
        let navigationController = window.rootViewController as UINavigationController
        return navigationController
    }
    
    //    let navigationController:UINavigationController?
//
//    let presenter = Presenter()
//    let interactor = Interactor()
//
//    let protectedView:ProtectedView = ProtectedView()
//    let loginView:LoginView = LoginView()
//    let registerView:RegisterView = RegisterView()
//    
//    init(){
//        
//
//        
//        protectedView.presenter = presenter
//        presenter.routing = self
//        
//        loginView.presenter = presenter
//        registerView.presenter = presenter
//        
//        presenter.interactor = interactor
//        presenter.loginView = loginView
//        presenter.registerView = registerView
//        presenter.protectedView = protectedView
//        
//        interactor.presenter = presenter
//        
//        let storyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
//        let viewC:UIViewController = storyboard.instantiateViewControllerWithIdentifier("LoginViewController") as UIViewController
//        
//        navigationController = UINavigationController(rootViewController: viewC)
//    }
//    
//    
//    func loadViewControllerInStoryboardWithViewController(viewController:UIViewController){
//        
//        var viewIdentifier = ""
//        if(viewController.isKindOfClass(RegisterView))
//        {
//            viewIdentifier = "RegisterViewController"
//            println("YES")
//        }
//        
//        let storyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
//        let viewC:UIViewController = storyboard.instantiateViewControllerWithIdentifier(viewIdentifier) as UIViewController
//
//        self.navigationController?.presentViewController(viewController, animated: true, completion: nil)
//    }
//    
//    
//    func navigateToRegisterView(registerViewController:RegisterView){
//        self.loadViewControllerInStoryboardWithViewController(registerViewController)
//    }
//    
//    func navigateLoginView(loginViewController:UIViewController){
//        let storyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
//        let viewC:UIViewController = storyboard.instantiateViewControllerWithIdentifier("RegisterViewController") as UIViewController
//        
//        self.navigationController?.presentViewController(loginViewController, animated: true, completion: nil)
//    }
}