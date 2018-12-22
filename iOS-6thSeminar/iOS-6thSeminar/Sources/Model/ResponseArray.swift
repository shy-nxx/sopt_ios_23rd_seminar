//
//  ResponseArray.swift
//  iOS-6thSeminar
//
//  Created by Leeseungsoo on 2018. 11. 24..
//  Copyright © 2018년 sopt. All rights reserved.
//

import ObjectMapper

struct ResponseArray<T: Mappable>: Mappable {
    
    var status: Int?
    var message: String?
    var data: [T]?
    
    init?(map: Map) {}
    
    mutating func mapping(map: Map) {
        status <- map["status"]
        message <- map["message"]
        data <- map["data"]
    }
}
