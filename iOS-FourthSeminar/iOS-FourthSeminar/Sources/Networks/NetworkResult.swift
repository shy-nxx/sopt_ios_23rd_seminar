//
//  NetworkResult.swift
//  iOS-FourthSeminar
//
//  Created by Leeseungsoo on 2018. 11. 9..
//  Copyright © 2018년 Leess. All rights reserved.
//

enum NetworkResult<T> {
    case success(T)
    case successWithData(T)
    case error(Error)
    case failure
}
