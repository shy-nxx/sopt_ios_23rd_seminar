//
//  Token.swift
//  iOS-CollaborationSeminar
//
//  Created by shineeseo on 2018. 12. 8..
//  Copyright © 2018년 sopt. All rights reserved.
//

import Foundation
import ObjectMapper

struct Token: Mappable {
    var token: String?
    
    init? (map: Map) {}
    
    mutating func mapping(map: Map) {
        token <- map["token"]
    }
}
