//
//  ProtectedViewWireframe.swift
//  SimpleLogin
//
//  Created by Pawar, Santosh-CW on 4/15/15.
//  Copyright (c) 2015 Santosh. All rights reserved.
//

import Foundation
import UIKit

let ProtectedViewControllerIdentifier = "ProtectedViewController"

class ProtectedViewWireframe {
    
    init(){
        
    }
    
    var protectedViewPresenter:ProtectedViewPresenter?
    var protectedView:ProtectedView?
    var presentedViewController:UIViewController?
    
    func presentProtectedViewFromViewController(viewController:UIViewController){
        let protectedViewC = protectedViewController()
        protectedViewC.eventHandler = protectedViewPresenter
        protectedViewC.modalPresentationStyle = .Custom
//        protectedViewC.transitioningDelegate = self
        protectedView = protectedViewC
        
        viewController.presentViewController(protectedViewC, animated: true, completion: nil)
        presentedViewController = protectedViewC
    }
    
    func protectedViewController() -> ProtectedView{
        let storyboard = mainStoryboard()
        let protectedViewController:ProtectedView = storyboard.instantiateViewControllerWithIdentifier(ProtectedViewControllerIdentifier) as ProtectedView
        return protectedViewController
    }
    
    func mainStoryboard() -> UIStoryboard {
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        return storyboard
    }
    
    func logout(){
        protectedViewPresenter?.presentLoginViewFromViewController(protectedView!)
    }
}