//
//  ContentsCell.swift
//  iOS-CollaborationSeminar
//
//  Created by Leeseungsoo on 2018. 12. 8..
//  Copyright © 2018년 sopt. All rights reserved.
//

import UIKit

class ContentsCell: UITableViewCell {
    
    @IBOutlet var feedImage: UIImageView!
    @IBOutlet var likeLabel: UILabel!
    @IBOutlet var feedLabel: UILabel!
    
    var delegate: ContentsButtonsDelegate!
    var indexPath: IndexPath!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    @IBAction func likeUnlike(_ sender: Any) {
        self.delegate.likeUnlike(at: indexPath)
    }
    
    @IBAction func goToCommentVC(_ sender: Any) {
        self.delegate.goToCommentViewController(at: indexPath)
    }
}
