//
//  LoginVC.swift
//  iOS-FourthSeminar
//
//  Created by shineeseo on 2018. 11. 10..
//  Copyright © 2018년 Leess. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwdTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginBtnAction(_ sender: Any) {
        guard let email = emailTextField.text else { return}
        guard let password = passwdTextField.text else {return}
        UserService.shared.login(email : email, password : password) { (data) in
            print(data.token)
        }
    }

}
