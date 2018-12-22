
//
//  MusicTableCell.swift
//  sopt_ios_3rd_hw
//
//  Created by shineeseo on 2018. 11. 5..
//  Copyright © 2018년 shineeseo. All rights reserved.
//

import UIKit

class MusicTableCell: UITableViewCell {
    
    @IBOutlet weak var albumImage: UIImageView!
    @IBOutlet weak var musicTitle: UILabel!
    @IBOutlet weak var singer: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        albumImage.layer.cornerRadius = 3
        albumImage.layer.masksToBounds = true
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
