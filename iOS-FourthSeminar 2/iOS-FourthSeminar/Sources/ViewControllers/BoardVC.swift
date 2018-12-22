//
//  BoardVC.swift
//  iOS-FourthSeminar
//
//  Created by Leeseungsoo on 2018. 11. 17..
//  Copyright © 2018년 Leess. All rights reserved.
//

import Foundation
import UIKit

class BoardVC: UIViewController {
    
    @IBOutlet var boardTableView: UITableView!
    
    var boardList = [Board]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        boardTableView.delegate = self
        boardTableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //뷰가 나타날 때 데이터가 변경된 것이 있으면 업데이트하여 나타내준다. 
        boardInit()
    }
    
    func boardInit() {
        BoardService.shared.getBoardList { [weak self] (data) in
            guard let `self` = self else {return}
            self.boardList = data
            self.boardTableView.reloadData()
        }
    }
    
    @IBAction func goTo(_ sender: Any) {
        let dvc = storyboard?.instantiateViewController(withIdentifier: "WriteVC") as! WriteVC
        navigationController?.pushViewController(dvc, animated: true)
    }
}

extension BoardVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return boardList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = boardTableView.dequeueReusableCell(withIdentifier: "BoardCell", for: indexPath) as! BoardCell
        let board = boardList[indexPath.row]
        cell.title.text = board.boardTitle
        cell.contents.text = board.boardContents
        let formatter = DateFormatter()
        cell.time.text = formatter.string(from: board.boardDate!)
        cell.like.text = "\(board.boardLike!)"
        
        return cell
    }
    
    
}
