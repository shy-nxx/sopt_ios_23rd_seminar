//
//  APIManager.swift
//  iOS-FourthSeminar
//
//  Created by shineeseo on 2018. 11. 10..
//  Copyright © 2018년 Leess. All rights reserved.
//

import Foundation

protocol APIManager {}

extension APIManager {
    //path라는 문자열 파라미터, string형 리턴값
    static func url(path : String) -> String {
        return "http://bghgu.tk:8080" + path
    }
    
}
