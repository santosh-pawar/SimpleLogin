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
    
    let navigationController:UINavigationController?

    var presenter:Presenter!
    
    init(){
        
        
        let storyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        let viewC:UIViewController = storyboard.instantiateViewControllerWithIdentifier("MainViewController") as! UIViewController
        
        self.navigationController = UINavigationController(rootViewController: viewC)
        presenter = Presenter()
        presenter.routing = self
    }
    
    class func classString() -> String {
        return NSStringFromClass(self)
    }
    
    func loadViewControllerInStoryboardWithViewController(viewController:UIViewController){
        
        var viewIdentifier = ""
        if(viewController.isKindOfClass(RegisterView))
        {
            viewIdentifier = "RegisterViewController"
            println("YES")
        }
        
        let storyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        let viewC:UIViewController = storyboard.instantiateViewControllerWithIdentifier(viewIdentifier) as! UIViewController

        self.navigationController?.presentViewController(viewController, animated: true, completion: nil)
    }
    
    
    func navigateToRegisterView(registerViewController:RegisterView){
        self.loadViewControllerInStoryboardWithViewController(registerViewController)
    }
    
    func navigateLoginView(loginViewController:UIViewController){
        let storyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        let viewC:UIViewController = storyboard.instantiateViewControllerWithIdentifier("RegisterViewController") as! UIViewController
        
        self.navigationController?.presentViewController(loginViewController, animated: true, completion: nil)
    }
}