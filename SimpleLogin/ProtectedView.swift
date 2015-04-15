//
//  ProtectedView.swift
//  
//
//  Created by Santosh Pawar on 4/13/15.
//
//

import UIKit

class ProtectedView: UIViewController {

    var protectedViewPresenter:ProtectedViewPresenter?
    
    //MARK: LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    //MARK:ActionMethods
    
    @IBAction func logoutButtonTapped(sender: AnyObject) {
//        presenter!.didUserTapRegister()
    }
}
