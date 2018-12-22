//
//  User.swift
//  iOS-CollaborationSeminar
//
//  Created by shineeseo on 2018. 12. 8..
//  Copyright © 2018년 sopt. All rights reserved.
//

import Foundation
import ObjectMapper

struct User: Mappable {
    var userIdx : Int?
    var name : String?
    var email : String?
    var profileUrl : String?
    var auth : Bool?
    
    init? (map: Map) {}
    
    mutating func mapping(map: Map) {
        userIdx <- map["userIdx"]
        name <- map["name"]
        email <- map["email"]
        profileUrl <- map["profileUrl"]
        auth <- map["auth"]
        
    }
}
