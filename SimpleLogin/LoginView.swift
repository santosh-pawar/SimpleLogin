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
        
    var eventHandler:LoginModuleInterface?
    
    //MARK: LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    //MARK:ActionMethods
    @IBAction func loginButtonTapped(sender: AnyObject) {
        eventHandler?.loginWithUser(emailTextField.text, password: passwordTextField.text)
    }
    
    @IBAction func registerButtonTapped(sender: AnyObject) {
        emailTextField.text = nil
        passwordTextField.text = nil
        eventHandler?.registerNewUser()
    }
    
    func clearTextFields(){
        emailTextField.text = nil
        passwordTextField.text = nil
    }
}
