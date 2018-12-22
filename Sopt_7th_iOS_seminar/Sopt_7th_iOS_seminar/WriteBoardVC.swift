//
//  WriteBoardVC.swift
//  Sopt_7th_iOS_seminar
//
//  Created by shineeseo on 2018. 11. 24..
//  Copyright © 2018년 shineeseo. All rights reserved.
//

import UIKit

class WriteBoardVC: UIViewController {

    @IBOutlet weak var titleLabel: UITextField!
    @IBOutlet weak var text: UITextView!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupTap()
    }
    
    func setupTap(){
        let viewTap = UITapGestureRecognizer(target: self, action: #selector(viewTapped))
        let imageTap = UITapGestureRecognizer(target: self, action: #selector(imageTapped))
        viewTap.delegate = self
        imageTap.delegate = self
        self.view.addGestureRecognizer(viewTap)
        //텍스트를 클릭하면 키보다가 올라오는데 텝 제스쳐를 추가하여 이미지를 볼 수 있도록한다.
        self.imageView.addGestureRecognizer(imageTap)
    }

    @objc func viewTapped() {
        self.view.endEditing(true)
        //모든 뷰들의 편집이 끝남. 키보드도 내려감.
    }
    
    @objc func imageTapped() {
        //이미지를 선택할 수 있는 갤러리를 띄움
        //ImagePicker 를 사용
        //눌렀을 때 alert가 띄워짐. (바로 갤러리가 띄우지 않고 actionsheet를 사용 -> 밑에서 올라오는 alert형식을 사용)
        //actionsheet의 style이 두개 -> addaction (카메라를 이용해서 선택, 갤러리를 통해 선택 )
        let picker = UIImagePickerController()
        picker.delegate = self
        let actionSheet = UIAlertController(title: "Photo source", message: "Choose a source", preferredStyle: .actionSheet)
        actionSheet.addAction(UIAlertAction(title: "Camera", style: .default, handler: { (action) in
            if UIImagePickerController.isSourceTypeAvailable(.camera) {
                picker.sourceType = .camera
                self.present(picker, animated: true)
            } else {
                print("not available")
            }
        }))
        actionSheet.addAction(UIAlertAction(title: "Photo Library", style: .default, handler: { (action) in
            picker.sourceType = .photoLibrary
            self.present(picker, animated: true)
        }))
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        self.present(actionSheet, animated: true)
    }
}
//imagePicker
extension WriteBoardVC : UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //imagepicker cancel누르면 dismiss
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    //didFinishPickingMediaWithInfo-> 이미지 선택 후 세팅 해주는 작업
    //갤러리 안에서 이미지 크롭하고 변경하는 작업을 한 후에는 변경한 이미지로 들어오게, 오리지널버전은 원래 버전으로 들어오도록 나눠서 작업
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        var newImg = UIImage()
        
        if let possibleImg = info[.editedImage] as? UIImage {
            newImg = possibleImg
        }
        else if let possibleImg = info[.originalImage] as? UIImage {
            newImg = possibleImg
        }
        else {
            return
        }
        imageView.image = newImg
        dismiss(animated: true, completion: nil)
    }
}

extension WriteBoardVC : UIGestureRecognizerDelegate {
 
}

