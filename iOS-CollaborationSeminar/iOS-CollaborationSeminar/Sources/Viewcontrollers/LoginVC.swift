//
//  LoginVC.swift
//  iOS-CollaborationSeminar
//
//  Created by Leeseungsoo on 2018. 12. 8..
//  Copyright © 2018년 sopt. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func loginAction(_ sender: Any) {
        
    }
    
    @IBAction func unwindToLoginVC(segue:UIStoryboardSegue){}
    
}
