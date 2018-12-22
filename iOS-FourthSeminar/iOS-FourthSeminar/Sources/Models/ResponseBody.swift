//
//  ResponseBody.swift
//  iOS-FourthSeminar
//
//  Created by shineeseo on 2018. 11. 10..
//  Copyright © 2018년 Leess. All rights reserved.
//

import Foundation
import ObjectMapper

struct ResponseBody<T: Mappable>: Mappable {
    // T는 Mappable 프로토콜을 따른다.
    var status: Int?
    var message: String?
    var data: T?
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
    }

}
