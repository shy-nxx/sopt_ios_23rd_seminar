//
//  NetworkResult.swift
//  iOS-CollaborationSeminar
//
//  Created by shineeseo on 2018. 12. 8..
//  Copyright © 2018년 sopt. All rights reserved.
//

enum NetworkResult<T> {
    case success(T)
    case error(Error)
}
