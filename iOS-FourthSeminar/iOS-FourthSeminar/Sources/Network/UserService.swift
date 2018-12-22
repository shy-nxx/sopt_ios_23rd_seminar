//
//  UserService.swift
//  iOS-FourthSeminar
//
//  Created by shineeseo on 2018. 11. 10..
//  Copyright © 2018년 Leess. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper
//protocol을 불러온다.
struct UserService : APIManager{
    static let shared = UserService()
    //apimanager의 함수 url
    let loginURL = url(path : "/login")
    //header정의 (딕셔너리)
    let headers : HTTPHeaders = [
        "Content-Type" : "application/json"
    ]
    //escaping은 함수가 끝난 후에 실행된다.
    func login (email : String, password : String, completion: @escaping(Token) -> Void) {
        let body = [
            "email" : email,
            "password" : password
        ]
        
        Alamofire.request(loginURL, method: .post, parameters : body, encoding : JSONEncoding.default, headers : headers).responseObject { (res:DataResponse<ResponseBody<Token>>) in
            switch res.result {
            case .success :
                guard let data = res.result.value else { return}
                guard let token = data.data else {return}
                completion(token)// response body의 data를 가져옴.
            case .failure( let err): print (err)}
            }
        }
        
    }

