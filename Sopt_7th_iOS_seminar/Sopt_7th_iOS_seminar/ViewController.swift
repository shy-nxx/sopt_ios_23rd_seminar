//
//  ViewController.swift
//  Sopt_7th_iOS_seminar
//
//  Created by shineeseo on 2018. 11. 24..
//  Copyright © 2018년 shineeseo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var boardList = [Board]() //board 타입의 array (변수)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }

    override func viewWillAppear(_ animated: Bool) {
        //데이터가 서버에서 업데이트 될 때마다 새로고침 기능 (뷰가 사라졌다가 다시 나타날 때 실행된다. )
        super.viewWillAppear(animated)
        
        //request 네트워크 메소드 실행
        
        BoardService.shared.getBoardList(offset: nil, limit: nil) {[weak self](data)in guard let `self` = self else {return}
            //데이터 누수를 방지하기 위해 사용 (weak self)
            self.boardList = data
            //받아온 데이터를 boardlist에 주입
            self.collectionView.reloadData()
            //collection view reload
        }
        
    }

}
extension ViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //data의 갯수
        return boardList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       //cell의 재사용 (reuseable cell) as cell class casting
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as! CollectionViewCell
        let board = boardList[indexPath.item]
        //tableview는 indexpath.row
        //서버는 이미지를 따로 s3에 저장되어있음 multipart로 가져와야한다. (glide? 비슷?) -> url string만 가져옴.-> kingfisher 라이브러리를 사용한다.
        //boardphoto를 optional임. 그것을 해제하는 extenstion 함수 선언 -> UIViewController+extensions (gsno)
        cell.imgView.imageFromUrl(gsno(board.boardPhoto), defaultImgPath: "")
        cell.titleLabel.text = board.boardTitle
        cell.contentLabel.text = board.boardContents
        
        return cell
    }
    
    
}
//collectionview 크기 동적 할당
extension ViewController : UICollectionViewDelegateFlowLayout {
    //셀의 크기, 셀 사이 간격, 전체 섹션 안에 있는 여백
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //전체 뷰 크기 - 30 ( 왼쪽 가운데 오른쪽) /2
        let width: CGFloat = (view.frame.width - 30 )/2
        let height :CGFloat = (view.frame.width - 30)/2 + 58
        
        return CGSize(width: width, height: height)
    }
    
    //padding (셀 사이의 간격 -가로/ 세로)

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        //정수 값이 아니라 CGFLOAT값
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
}





