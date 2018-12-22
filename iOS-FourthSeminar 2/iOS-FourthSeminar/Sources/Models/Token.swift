//
//  Token.swift
//  iOS-FourthSeminar
//
//  Created by Leeseungsoo on 2018. 11. 12..
//  Copyright © 2018년 Leess. All rights reserved.
//

import Foundation
import ObjectMapper

struct Token: Mappable {
    
    var token: String?
    
    init?(map: Map) {}
    
    mutating func mapping(map: Map) {
        token <- map["token"]
    }
}
