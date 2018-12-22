//
//  DetailViewController.swift
//  sopt_ios_3rd_hw
//
//  Created by shineeseo on 2018. 11. 9..
//  Copyright © 2018년 shineeseo. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var albumImage : UIImage?
    var musicTitle : String?
    var singer : String?
    
    @IBOutlet weak var albumImageView: UIImageView!
    @IBOutlet weak var musicTitleView: UILabel!
    @IBOutlet weak var singerView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        albumImageView.image = albumImage
        musicTitleView.text = musicTitle
        singerView.text = singer
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
