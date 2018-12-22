//
//  User.swift
//  iOS-FourthSeminar
//
//  Created by Leeseungsoo on 2018. 11. 9..
//  Copyright © 2018년 Leess. All rights reserved.
//

import Foundation
import ObjectMapper
//Mappable protocol
struct User: Mappable {
    var userId: Int?
    var userName: String?
    var userPart: String?
    var userProfile: String?
    var userEmail: String?
    var auth: Bool?
    
    //외우기
    init?(map: Map) {
        
    }
    
    //mappable protocol 자체 라이브러리
    //property에 map[실제 서버에서 넘어오는 값의 변수명을 넣어준다]
    mutating func mapping(map: Map) {
        userId <- map["u_id"]
        userName <- map["u_name"]
        userPart <- map["u_part"]
        userProfile <- map["u_profile"]
        userEmail <- map["u_email"]
        auth <- map["auth"]
    }
}

