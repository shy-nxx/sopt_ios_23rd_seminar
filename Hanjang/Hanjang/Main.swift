//
//  Main.swift
//  Hanjang
//
//  Created by shineeseo on 2018. 10. 10..
//  Copyright © 2018년 shineeseo. All rights reserved.
//

import UIKit

class Main: ViewController {

    @IBOutlet weak var emptyStar: UIImageView!
    @IBOutlet weak var fillStar: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emptyStar.isHidden = false;
        fillStar.isHidden = true;
        let tapGesture = UITapGestureRecognizer(target: self,  action:#selector(registWordToVoca))
        
        // add it to the image view;
        self.emptyStar.addGestureRecognizer(tapGesture)
    }
    
    @objc func registWordToVoca(_ sender: UIGestureRecognizer) {
        // if the tapped view is a UIImageView then set it to imageview
        emptyStar.isHidden = !emptyStar.isHidden;
        fillStar.isHidden = !fillStar.isHidden;
        
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
