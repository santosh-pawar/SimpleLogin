//
//  LoginView.swift
//  SimpleLogin
//
//  Created by Santosh Pawar on 4/13/15.
//  Copyright (c) 2015 Santosh. All rights reserved.
//

import UIKit

class LoginView: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
        
    var eventHandler:LoginModuleInterface?
    
    //MARK: LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    //MARK:Action Methods
    @IBAction func loginButtonTapped(sender: AnyObject) {
        self.login()
    }
    
    @IBAction func registerButtonTapped(sender: AnyObject) {
        emailTextField.text = nil
        passwordTextField.text = nil
        eventHandler?.registerNewUser()
    }
    
    func login()
    {
        eventHandler?.loginWithUser(emailTextField.text, password: passwordTextField.text)
    }
    
    func clearTextFields(){
        emailTextField.text = nil
        passwordTextField.text = nil
    }
    
    //MARK: Delegate methods
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        self.login()
        return true
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
}
