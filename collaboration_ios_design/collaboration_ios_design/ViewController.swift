//
//  ViewController.swift
//  collaboration_ios_design
//
//  Created by shineeseo on 2018. 11. 17..
//  Copyright © 2018년 shineeseo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource{

    
    @IBOutlet weak var tableView: UITableView!
    
    let headers:[String] = ["쇼핑정보", "Lettered"]
    let data:[[String]] = [["주문내역", "상품후기", "상품문의"], ["ItemA", "ItemB", "ItemC"]]

    override func viewDidLoad() {
        super.viewDidLoad()
       tableView.dataSource = self
    }
    // 1. numberOfRowsInSection - 어레이를 카운팅
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].count
    }
    
    //6. 섹션이 몇개인지 확인하여 추가
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    //2.cellForRowAt -
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        //4.dequeueReusableCell 입력후, 스토리보드에서 "cell" 입력
//        cell.textLabel?.text = data[indexPath.section][indexPath.row]  // 7. 수정
        
//        //12. 소제목 리스팅
//        cell.detailTextLabel?.text = sub[indexPath.section][indexPath.row]
//
//        //13. 스토리보드에서 star를 선택하는 대신 코드로 넣을수도 있다.
//        // (스토리보드 에서 넣었다면코드를 제외해도됨)
//        cell.imageView?.image = UIImage(named: "star")
        
        return cell
        //8. 스토리보드에서 Table View의 style을 Plain에서 Grouped 로 변경 -> 리스트가 그룹으로 나뉘어짐.
    }
    
    //9. 섹션의 제목 입력하기
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return headers[section]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
   
}

