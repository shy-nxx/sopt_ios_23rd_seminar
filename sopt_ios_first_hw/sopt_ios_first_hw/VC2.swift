//
//  VC2.swift
//  sopt_ios_first_hw
//
//  Created by shineeseo on 2018. 10. 5..
//  Copyright © 2018년 shineeseo. All rights reserved.
//

import UIKit

class VC2: ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.tintColor = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1.0)
        self.navigationController?.navigationBar.topItem?.title = ""
        
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
