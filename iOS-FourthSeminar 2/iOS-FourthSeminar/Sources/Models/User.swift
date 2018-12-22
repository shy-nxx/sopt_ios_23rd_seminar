//
//  User.swift
//  iOS-FourthSeminar
//
//  Created by Leeseungsoo on 2018. 11. 9..
//  Copyright © 2018년 Leess. All rights reserved.
//

import Foundation
import ObjectMapper

struct User: Mappable {
    var userId: Int?
    var userName: String?
    var userPart: String?
    var userProfile: String?
    var userEmail: String?
    var auth: Bool?
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        userId <- map["u_id"]
        userName <- map["u_name"]
        userPart <- map["u_part"]
        userProfile <- map["u_profile"]
        userEmail <- map["u_email"]
        auth <- map["auth"]
    }
}

