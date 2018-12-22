//
//  BoardVC.swift
//  iOS-FourthSeminar
//
//  Created by shineeseo on 2018. 11. 10..
//  Copyright © 2018년 Leess. All rights reserved.
//

import UIKit

class BoardVC: UIViewController {

    @IBOutlet weak var boardTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
extension BoardVC : UITableViewDelegate {
    
}

//extension BoardVC : UITableViewDataSource {
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        <#code#>
//    }
//
//}
