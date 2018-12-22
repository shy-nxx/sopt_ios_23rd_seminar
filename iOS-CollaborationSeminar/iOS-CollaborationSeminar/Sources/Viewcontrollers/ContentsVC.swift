//
//  ContentsVC.swift
//  iOS-CollaborationSeminar
//
//  Created by Leeseungsoo on 2018. 12. 8..
//  Copyright © 2018년 sopt. All rights reserved.
//

import UIKit

class ContentsVC: UIViewController {

    @IBOutlet var contentsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentsTableView.delegate = self
        contentsTableView.dataSource = self
    }
    


}

extension ContentsVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.width + 110
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = contentsTableView.dequeueReusableCell(withIdentifier: "ContentsCell") as! ContentsCell
        cell.delegate = self
        cell.indexPath = indexPath
        return cell
    }
    
    
}

extension ContentsVC: ContentsButtonsDelegate {
    func likeUnlike(at indexPath: IndexPath) {
        print("like")
    }
    
    func goToCommentViewController(at indexPath: IndexPath) {
        print("goToComment")
    }
}


