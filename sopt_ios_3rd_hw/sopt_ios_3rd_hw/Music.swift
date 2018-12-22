//
//  Music.swift
//  sopt_ios_3rd_hw
//
//  Created by shineeseo on 2018. 11. 9..
//  Copyright © 2018년 shineeseo. All rights reserved.
//

import Foundation
import UIKit

//music cell model
struct Music {
    var albumImage : UIImage?
    var musicTitle : String
    var singer : String
    
    init(title : String, singer : String, coverName : String) {
        self.albumImage = UIImage(named: coverName)
        self.musicTitle = title
        self.singer = singer
    }
    
}
