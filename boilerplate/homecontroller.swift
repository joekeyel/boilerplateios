//
//  homecontroller.swift
//  boilerplate
//
//  Created by Hasanul Isyraf on 27/09/2018.
//  Copyright © 2018 Hasanul Isyraf. All rights reserved.
//

import UIKit

class homecontroller: UIViewController {
    
    
    
    @IBOutlet weak var menubutton: UIBarButtonItem!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        menubutton.target = self.revealViewController()
        menubutton.action = #selector(SWRevealViewController.revealToggle(_:))
        self.view.addGestureRecognizer((self.revealViewController()?.panGestureRecognizer())!)
    }

    

}
