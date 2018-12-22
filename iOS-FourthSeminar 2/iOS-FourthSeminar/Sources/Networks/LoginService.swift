//
//  LoginService.swift
//  iOS-FourthSeminar
//
//  Created by Leeseungsoo on 2018. 11. 13..
//  Copyright © 2018년 Leess. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper

struct LoginService: APIManager {
    static let shared = LoginService()
    let loginURL = url("/login")
    
    let headers: HTTPHeaders = [
        "Content-Type" : "application/json"
    ]
    
    func login(email: String, password: String, completion: @escaping (Token) -> Void) {
        let body = [
            "email" : email,
            "password" : password
        ]
        Alamofire.request(loginURL, method: .post, parameters: body, encoding: JSONEncoding.default, headers: headers).responseObject { (res
            : DataResponse<ResponseObject<Token>>) in
            switch res.result {
            case .success:
                guard let data = res.result.value else { return }
                guard let token = data.data else { return }
                completion(token)
            case .failure(let err):
                print(err)
            }
        }
    }
    
}
