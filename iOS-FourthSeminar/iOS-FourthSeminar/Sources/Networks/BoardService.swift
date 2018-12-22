//
//  BoardService.swift
//  iOS-FourthSeminar
//
//  Created by Leeseungsoo on 2018. 11. 9..
//  Copyright © 2018년 Leess. All rights reserved.
//

import Foundation
import Alamofire

struct BoardService: APIManager, Gettable {
    typealias NetworkData = Board
    let userURL = url("/users")
    let header: HTTPHeaders = [
        "Content-Type": "application/json"
    ]
    
    
    func uploadBoard() {
        
    }
    
}
