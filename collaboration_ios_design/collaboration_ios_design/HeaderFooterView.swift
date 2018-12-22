//
//  HeaderFooterView.swift
//  collaboration_ios_design
//
//  Created by shineeseo on 2018. 11. 23..
//  Copyright © 2018년 shineeseo. All rights reserved.
//

import UIKit

class HeaderFooterView: UITableViewHeaderFooterView {
    var cell :UITableViewCell {
        willSet {
            cell.removeFromSuperview()
        }
        didSet {
            if let cell = cell {
                cell.frame = self.bounds
                cell.autoresizingMask = [UIViewAutoresizing.FlexibleHeight, UIViewAutoresizing.FlexibleWidth]
                self.contentView.backgroundColor = UIColor. clearColor()
                self.contentView .addSubview(cell)
                
            }
        }
    }

}
