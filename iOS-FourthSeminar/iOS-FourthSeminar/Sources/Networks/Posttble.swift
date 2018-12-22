//
//  Posttble.swift
//  iOS-FourthSeminar
//
//  Created by Leeseungsoo on 2018. 11. 9..
//  Copyright © 2018년 Leess. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper
import ObjectMapper

protocol Posttable {
    associatedtype NetworkData: Mappable
}

extension Posttable {
    func post(_ url: String, body: [String:Any]?, header: HTTPHeaders?, completion: @escaping (NetworkResult<NetworkData>) -> Void) {
        Alamofire.request(url, method: .post, parameters: nil, encoding: JSONEncoding.default, headers: header).responseObject { (res: DataResponse<NetworkData>) in
            switch res.result {
            case .success:
                guard let value = res.result.value else { return }
                completion(.success(value))
            case .failure(let err):
                completion(.error(err))
            }
        }
    }
}
