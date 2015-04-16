//
//  RegisterView.swift
//  SimpleLogin
//
//  Created by Santosh Pawar on 4/13/15.
//  Copyright (c) 2015 Santosh. All rights reserved.
//

import UIKit

class RegisterView: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var reTypePasswordTextField: UITextField!
        
    var eventHandler:RegisterViewInterface?
    
    //MARK: LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    //MARK:ActionMethods
    @IBAction func registerButtonTapped(sender: AnyObject) {
        self.register()
    }
    
    @IBAction func alreadyHaveAccountButtonTapped(sender: AnyObject) {
        eventHandler?.login()
    }
    
    func register(){
        eventHandler?.registerWithUserAndPassword(emailTextField.text, password: passwordTextField.text, retypePassword: reTypePasswordTextField.text)
    }
    
    
    func clearTextFields(){
        emailTextField.text = nil
        passwordTextField.text = nil
        reTypePasswordTextField.text = nil
    }
    
    //MARK: Delegate methods
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        self.register()
        return true
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
}
