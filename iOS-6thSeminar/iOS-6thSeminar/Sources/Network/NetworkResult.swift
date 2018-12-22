//
//  NetworkResult.swift
//  iOS-6thSeminar
//
//  Created by Leeseungsoo on 2018. 11. 24..
//  Copyright © 2018년 sopt. All rights reserved.
//

import Foundation

enum NetworkResult<T> {
    case success(T)
    case error(Error)
}
