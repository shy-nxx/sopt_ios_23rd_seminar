//
//  detailViewController.swift
//  Sopt_3rd_seminar
//
//  Created by shineeseo on 2018. 10. 27..
//  Copyright © 2018년 shineeseo. All rights reserved.
//

import UIKit

class detailViewController: UIViewController {
    
    var albumImage : UIImage?
    var musicTitle : String?
    var singer : String?
    
    @IBOutlet weak var albumImageView: UIImageView!
    @IBOutlet weak var musicTitleLabel: UILabel!
    @IBOutlet weak var singerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        albumImageView.image = albumImage
        musicTitleLabel.text = musicTitle
        singerLabel.text = singer
        
        
        
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
