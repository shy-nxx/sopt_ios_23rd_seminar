//
//  MusicTableViewCell.swift
//  Sopt_3rd_seminar
//
//  Created by shineeseo on 2018. 10. 27..
//  Copyright © 2018년 shineeseo. All rights reserved.
//

import UIKit

class MusicTableViewCell: UITableViewCell {

    @IBOutlet weak var albumImage: UIImageView!
    @IBOutlet weak var musicTitle: UILabel!
    @IBOutlet weak var singer: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //셀 안의 view에 관련된 초기화 (imageView...)
        //imageview 라운딩 처리
        albumImage.layer.cornerRadius = 3
        albumImage.layer.masksToBounds = true
        //imageview안의 이미지까지 라운드 적용 
        
        
    }

}
