//
//  Requestable.swift
//  iOS-CollaborationSeminar
//
//  Created by shineeseo on 2018. 12. 8..
//  Copyright © 2018년 sopt. All rights reserved.
//

import Foundation
import ObjectMapper
import Alamofire
import AlamofireObjectMapper

protocol Requestable {
    associatedtype NetworkData: Mappable
}

extension Requestable {
    
    func gettable(_ url : String, body: [String: Any]?, header: HTTPHeaders?, completion: @escaping (NetworkResult<NetworkData>)->Void) {
        Alamofire.request(url, method: .get, parameters: body, encoding: JSONEncoding.default, headers: header).responseObject{(res: DataResponse<NetworkData>)in
            switch res.result {
            case .success:
                guard let value = res.result.value else {return}
                completion(.success(value))
                
            case .failure(let err):
                completion(.error(err))
            }
            
        }
        
    }
    
    func postable(_ url: String, body: [String:Any]?, header: HTTPHeaders?, completion: @escaping(NetworkResult<NetworkData>)->Void) {
        Alamofire.request(url, method: .post, parameters: body, encoding: JSONEncoding.default, headers: header).responseObject {(res: DataResponse<NetworkData>) in
            switch res.result {
            case .success:
                guard let value = res.result.value  else {return}
            case .failure(let err):
                completion(.error(err))
            }
        }
    }
}

