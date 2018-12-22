//
//  MusicListView.swift
//  sopt_ios_3rd_hw
//
//  Created by shineeseo on 2018. 11. 5..
//  Copyright © 2018년 shineeseo. All rights reserved.
//

import UIKit

class MusicListView: UIViewController {
    var musicList : [Music] = []
    var toolbar : UIToolbar!
    
    @IBOutlet weak var albumImage: UIImageView!
    @IBOutlet weak var musicTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        setMusicData()
        setupToolbar()
        musicTable.delegate = self
        musicTable.dataSource  = self
        musicTable.reloadData()
    }
    func setupToolbar() {
        toolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        let edit = UIBarButtonItem(title: "Edit", style: UIBarButtonItem.Style.plain, target: self, action: #selector(showEditing))
        self.navigationItem.rightBarButtonItem = edit

        toolbar.setItems([edit], animated: true)

    }
    @objc func showEditing(sender: UIBarButtonItem)
    {
        if(self.musicTable.isEditing == true)
        {
            self.musicTable.isEditing = false
            self.navigationItem.rightBarButtonItem?.title = "Done"
        }
        else
        {
            self.musicTable.isEditing = true
            self.navigationItem.rightBarButtonItem?.title = "Edit"
        }
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
extension MusicListView : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nextVC = storyboard?.instantiateViewController(withIdentifier: "Detail") as! DetailViewController
        
        let music = musicList[indexPath.row]
        nextVC.albumImage = music.albumImage
        nextVC.musicTitle = music.musicTitle
        nextVC.singer = music.singer
        
    navigationController?.pushViewController(nextVC, animated: true)
    }
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let movingCell = musicList[sourceIndexPath.row]
        
        musicList.remove(at : sourceIndexPath.row)
        musicList.insert(movingCell, at : destinationIndexPath.row)
        
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            musicList.remove(at: indexPath.row)
            musicTable.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
}

extension MusicListView : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musicList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = musicTable.dequeueReusableCell(withIdentifier: "MusicTableCell") as! MusicTableCell
        let music = musicList[indexPath.row]
        
        cell.albumImage.image = music.albumImage
        cell.musicTitle.text = music.musicTitle
        cell.singer.text = music.singer
        
        return cell
    }
}
extension MusicListView {
    func setMusicData() {
        let music1 = Music(title: "삐삐", singer: "아이유", coverName: "album_iu")
        let music2 = Music(title: "가을 타나봐", singer: "바이브", coverName: "album_vibe")
        let music3 = Music(title: "고백", singer: "양다일", coverName: "album_yangdail")
        let music4 = Music(title: "하루도 그대를 사랑하지 않은 적이 없었다", singer: "임창정", coverName: "album_im")
        let music5 = Music(title: "Save (Feat. 팔로알토)", singer: "루피(Loopy)", coverName: "album_smtm7")
        let music6 = Music(title: "멋지게 인사하는 법 (Feat. 슬기)", singer: "Zion.T", coverName: "album_ziont")
        let music7 = Music(title: "IDOL", singer: "방탄소년단", coverName: "album_bts")
        let music8 = Music(title: "시간이 들겠지 (Feat. Colde)", singer: "로꼬", coverName: "album_loco")
        let music9 = Music(title: "모든 날, 모든 순간", singer: "폴킴", coverName: "album_paul")
        let music10 = Music(title: "Way Back Home", singer: "숀(SHAUN)", coverName: "album_shaun")
        musicList = [music1, music2, music3, music4, music5, music6, music7, music8, music9, music10]
    }
}
