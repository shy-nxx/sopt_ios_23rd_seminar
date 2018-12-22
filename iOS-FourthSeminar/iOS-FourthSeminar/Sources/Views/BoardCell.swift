//
//  BoardCell.swift
//  iOS-FourthSeminar
//
//  Created by shineeseo on 2018. 11. 10..
//  Copyright © 2018년 Leess. All rights reserved.
//

import UIKit

class BoardCell: UITableViewCell {
    
    @IBOutlet weak var boardImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var contentsLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Do any additional setup after loading the view.
    }

}
