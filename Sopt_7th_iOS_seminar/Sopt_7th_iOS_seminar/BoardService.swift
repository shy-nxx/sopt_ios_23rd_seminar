//
//  BoardService.swift
//  Sopt_7th_iOS_seminar
//
//  Created by shineeseo on 2018. 11. 24..
//  Copyright © 2018년 shineeseo. All rights reserved.
//

import Foundation
import Alamofire

protocol APIManager {}

extension APIManager {
    static func url (_ path:String) -> String {
        return "http://bghgu.tk:8080" + path
    }
}
struct BoardService: APIManager, Requestable {
    typealias NetworkData = ResponseArray<Board>
    static let shared = BoardService()
    let boardURL = url("/contents")
    let header: HTTPHeaders = [
        "Content-Type": "application/json"
    ]
    
    //모든 게시글 조회 api
    //게시글을 불러올 때 옵션에 대한 내용이 api명세서에 더 추가되어있습니다.
    //api 명세서를 보시고 한번 시도해보세요!
    func getBoardList(offset: Int? = 0, limit: Int? = 10, completion: @escaping ([Board]) -> Void) {
        let queryURL = boardURL + "?offset=\(offset ?? 0)&limit=\(limit ?? 10)"
        gettable(boardURL, body: nil, header: header) { (res) in
            switch res {
            case .success(let value):
                guard let boardList = value.data else
                {return}
                completion(boardList)
            case .error(let error):
                print(error)
            }
        }
    }
    
}

