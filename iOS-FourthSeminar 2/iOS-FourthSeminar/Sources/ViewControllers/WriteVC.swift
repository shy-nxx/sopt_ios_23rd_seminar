//
//  WriteVC.swift
//  iOS-FourthSeminar
//
//  Created by Leeseungsoo on 2018. 11. 10..
//  Copyright © 2018년 Leess. All rights reserved.
//

import Foundation
import UIKit

class WriteVC: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        let delete = UIBarButtonItem(title: "삭제", style: .done, target: self, action: #selector(deleteBoard))
        self.navigationItem.rightBarButtonItem = delete
    }
    
    
    @objc func deleteBoard() {
        
    }
}
