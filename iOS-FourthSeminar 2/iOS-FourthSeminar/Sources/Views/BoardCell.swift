//
//  BoardCell.swift
//  iOS-FourthSeminar
//
//  Created by Leeseungsoo on 2018. 11. 17..
//  Copyright © 2018년 Leess. All rights reserved.
//

import UIKit

class BoardCell: UITableViewCell {
    
    @IBOutlet var title: UILabel!
    @IBOutlet var contents: UILabel!
    @IBOutlet var time: UILabel!
    @IBOutlet var name: UILabel!
    @IBOutlet var like: UILabel!
    @IBOutlet weak var board_image: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
