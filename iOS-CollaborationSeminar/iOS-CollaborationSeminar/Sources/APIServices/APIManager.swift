//
//  APIManager.swift
//  iOS-CollaborationSeminar
//
//  Created by shineeseo on 2018. 12. 8..
//  Copyright © 2018년 sopt. All rights reserved.
//

protocol APIManager {}

extension APIManager {
    static func url(_ path: String) -> String {
        return "http://bghgu.tk:8080" + path
    }
}
