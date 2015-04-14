//
//  LoginView.swift
//  SimpleLogin
//
//  Created by Santosh Pawar on 4/13/15.
//  Copyright (c) 2015 Santosh. All rights reserved.
//

import UIKit

class LoginView: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var presenter:Presenter!
    
    //MARK: LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    class func classString() -> String {
        return NSStringFromClass(self)
    }
    
    //MARK:ActionMethods
    @IBAction func loginButtonTapped(sender: AnyObject) {
        self.presenter.didUserRequestLoinWithUser(emailTextField.text, password: passwordTextField.text)
    }
    
    @IBAction func registerButtonTapped(sender: AnyObject) {
        self.presenter.didUserTapRegister()
    }
}