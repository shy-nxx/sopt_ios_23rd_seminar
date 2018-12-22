//
//  NetworkResult.swift
//  Sopt_7th_iOS_seminar
//
//  Created by shineeseo on 2018. 11. 24..
//  Copyright © 2018년 shineeseo. All rights reserved.
//

import Foundation

enum NetworkResult<T> {
    case success(T)
    case error(Error)
}
