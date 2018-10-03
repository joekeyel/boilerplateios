//
//  LoginController.swift
//  boilerplate
//
//  Created by Hasanul Isyraf on 28/09/2018.
//  Copyright © 2018 Hasanul Isyraf. All rights reserved.
//

import UIKit

class LoginController: UIViewController {

    @IBOutlet weak var usernametext: UITextField!
    
    @IBOutlet weak var passwordtext: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernametext.leftViewMode = UITextFieldViewMode.always
     
        
        passwordtext.leftViewMode = UITextFieldViewMode.always
       
       
    }

   

}
