//
//  ContentsButtonsDelegate.swift
//  iOS-CollaborationSeminar
//
//  Created by Leeseungsoo on 2018. 12. 8..
//  Copyright © 2018년 sopt. All rights reserved.
//

import Foundation

protocol ContentsButtonsDelegate {
    func likeUnlike(at indexPath: IndexPath)
    func goToCommentViewController(at indexPath: IndexPath)
}
