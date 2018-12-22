//
//  APIService.swift
//  iOS-FourthSeminar
//
//  Created by Leeseungsoo on 2018. 11. 8..
//  Copyright © 2018년 Leess. All rights reserved.
//

import Foundation

protocol APIManager {}

extension APIManager {
    static func url(_ path: String) -> String {
        return "baseURL" + path
    }
}
