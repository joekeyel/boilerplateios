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
    
    @IBOutlet weak var loginbutton: UIButton!
    
    @IBOutlet weak var appicon: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        let usernameimage = UIImage(named:"Profile")
        let passwordimage = UIImage(named:"password")
        
        addLeftimage(textfield: usernametext, addimg: usernameimage!)
        addLeftimage(textfield: passwordtext, addimg: passwordimage!)
        
        appicon.image = UIImage(named:"react")

       //this part to move the view above the keyboard when keyboard is showed up
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardshowup(notification:)),name: Notification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardshowup(notification:)),name: Notification.Name.UIKeyboardDidShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardshowup(notification:)),name: Notification.Name.UIKeyboardWillChangeFrame, object: nil)
        
    }
    
    
    deinit{
    
        NotificationCenter.default.removeObserver(Notification.Name.UIKeyboardWillShow)
        NotificationCenter.default.removeObserver(Notification.Name.UIKeyboardDidShow)
        NotificationCenter.default.removeObserver(Notification.Name.UIKeyboardWillChangeFrame)
    
    }
    //function obj c when keyboard shown up
    
    @objc func keyboardshowup(notification:Notification){
        
        
        guard let keyboardrect = (notification.userInfo?[UIKeyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue else  {return
        }
        
        if(notification.name == Notification.Name.UIKeyboardWillShow || notification.name == Notification.Name.UIKeyboardDidShow ){
            
            let distancemove = -keyboardrect.height + (loginbutton.frame.origin.y - view.frame.origin.y)
            view.frame.origin.y = distancemove
            
            
        }
        else
       {
            view.frame.origin.y = 0
        }
    }
    
    //this is when user tap to dismiss keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func addLeftimage(textfield:UITextField,addimg:UIImage){
        let leftimageview = UIImageView(frame:CGRect(x:0.0,y:0.0,width:addimg.size.width,height:addimg.size.height))
        leftimageview.image = addimg
        
        textfield.leftView = leftimageview
        textfield.leftViewMode = .always
        
        
    }

   

}
