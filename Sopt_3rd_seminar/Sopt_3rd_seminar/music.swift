//
//  music.swift
//  Sopt_3rd_seminar
//
//  Created by shineeseo on 2018. 10. 27..
//  Copyright © 2018년 shineeseo. All rights reserved.
//

import Foundation
import UIKit
//music cell model
struct Music {
    var albumImage : UIImage?
    var musicTitle : String
    var singer : String
    
    init(title : String , singer : String, coverName : String ) {
        self.albumImage = UIImage(named : coverName)
        self.musicTitle = title
        self.singer = singer
    }
}
