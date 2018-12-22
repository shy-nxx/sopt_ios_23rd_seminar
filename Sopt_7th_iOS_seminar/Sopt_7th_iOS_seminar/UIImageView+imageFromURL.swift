//
//  UIViewController+extensions.swift
//  Sopt_7th_iOS_seminar
//
//  Created by shineeseo on 2018. 11. 24..
//  Copyright © 2018년 shineeseo. All rights reserved.
//

//url로 부터 이미지를 가져오는 함수를 선언
import Foundation
import UIKit
import Kingfisher

extension UIImageView {
    //서버에서 받아온 url, 받아온 이미지에 대한 path가 없거나 유효하지 않는 경로면 default img path를 받는다.
    public func imageFromUrl(_ urlString: String?, defaultImgPath : String) {
        //default 이미지 생성 (asset에 있는 사진으로)
        let defaultImg = UIImage(named: defaultImgPath)
        if let url = urlString {
            //url이 없다면 디폴트 이미지로 설정
            if url.isEmpty {
                self.image = defaultImg
            } else {
                //kf.setImage(kingfisher에 선언된 라이브러리-> url을 imageview에 넣어줌)
                //placeholder는 없는 경우 default이미지 넣어줌(다시 한 번 예외처리)
                self.kf.setImage(with: URL(string: url), placeholder: defaultImg, options: [.transition(ImageTransition.fade(0.5))])
            }
        } else {
            self.image = defaultImg
        }
    }
}

