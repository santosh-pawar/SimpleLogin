//
//  RegisterView.swift
//  SimpleLogin
//
//  Created by Santosh Pawar on 4/13/15.
//  Copyright (c) 2015 Santosh. All rights reserved.
//

import UIKit

class RegisterView: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var reTypePasswordTextField: UITextField!
    
    //MARK: LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    class func classString() -> String {
        return NSStringFromClass(self)
    }
    
    //MARK:ActionMethods
    @IBAction func registerButtonTapped(sender: AnyObject) {
        
    }
    
    @IBAction func alreadyHaveAccountButtonTapped(sender: AnyObject) {
        
    }
}