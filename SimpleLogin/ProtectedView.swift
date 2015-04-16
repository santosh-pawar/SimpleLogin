//
//  ProtectedView.swift
//  SimpleLogin
//
//  Created by Santosh Pawar on 4/13/15.
//  Copyright (c) 2015 Santosh. All rights reserved.
//

import UIKit

class ProtectedView: UIViewController {

    var eventHandler:ProtectedViewInterface?
    
    //MARK: LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    //MARK:ActionMethods
    
    @IBAction func logoutButtonTapped(sender: AnyObject) {
        eventHandler!.logoutFromApp()
    }
}
