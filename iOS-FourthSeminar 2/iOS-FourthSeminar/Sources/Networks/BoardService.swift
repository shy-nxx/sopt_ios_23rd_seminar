//
//  BoardService.swift
//  iOS-FourthSeminar
//
//  Created by Leeseungsoo on 2018. 11. 9..
//  Copyright © 2018년 Leess. All rights reserved.
//

import Foundation
import Alamofire

struct BoardService: APIManager, Requestable {
    typealias NetworkData = Board
    static let shared = BoardService()
    let boardURL = url("/contents")
    let header: HTTPHeaders = [
        "Content-Type": "application/json"
    ]
    
    func getBoardList(completion: @escaping ([Board]) -> Void) {
        gettable(boardURL, body: nil, header: header){ (res) in
            switch res {
            case .success(let value) :
                guard let boardList = value.boardDate
                else
                {return}
            case .error(let error) :
                print(error)
            }
            
        }
        
    }
    
    func getBoardDetail(id: Int, completion: @escaping (Board) -> Void) {
        
    }
    
    func uploadBoard(title: String, contents: String, image: UIImage) {
        
        
        
    }
    
    
}
