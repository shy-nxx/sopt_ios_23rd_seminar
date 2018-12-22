//
//  LoginVC.swift
//  iOS-FourthSeminar
//
//  Created by Leeseungsoo on 2018. 11. 13..
//  Copyright © 2018년 Leess. All rights reserved.
//

import Foundation
import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet var emailTxtFd: UITextField!
    @IBOutlet var passwordTxtFd: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func login(_ sender: Any) {
        LoginService.shared.login(email: emailTxtFd.text!, password: passwordTxtFd.text!) { (token) in
            
        }
    }
    
    @IBAction func goToSignUpView(_ sender: Any) {
        
    }
    
    @IBAction func unwindToLoginVC(segue:UIStoryboardSegue){}
    
}
