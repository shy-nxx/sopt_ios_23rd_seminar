//
//  UserService.swift
//  iOS-FourthSeminar
//
//  Created by Leeseungsoo on 2018. 11. 8..
//  Copyright © 2018년 Leess. All rights reserved.
//

import Foundation
import Alamofire

struct UserService: APIManager, Requestable {
    typealias NetworkData = User
    static let shared = UserService()
    let userURL = url("/users")
    let userDefaults = UserDefaults.standard
    let headers: HTTPHeaders = [
        "Content-Type" : "application/json"
    ]
    
    func signUp(name: String, email: String, password: String, part: String, completion: @escaping () -> Void) {
        let body = [
            "name" : name,
            "email" : email,
            "password" : password,
            "part" : part
        ]
        postable(userURL, body: body, header: headers) { res in
            switch res {
            case .success:
                completion()
            case .error(let error):
                print(error)
            }
        }
        
    }
    
}
