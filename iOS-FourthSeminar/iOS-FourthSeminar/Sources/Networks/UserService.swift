//
//  UserService.swift
//  iOS-FourthSeminar
//
//  Created by Leeseungsoo on 2018. 11. 8..
//  Copyright © 2018년 Leess. All rights reserved.
//

import Foundation
import Alamofire

struct UserService: APIManager, Gettable {
    typealias NetworkData = User
    let userURL = url("/users")
    let header: HTTPHeaders = [
        "Content-Type": "application/json"
    ]
    
    static func login() {
        
    }
    
    static func signUp() {
        
    }
    
}
