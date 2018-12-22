//
//  ViewController.swift
//  Sopt_3rd_seminar
//
//  Created by shineeseo on 2018. 10. 27..
//  Copyright © 2018년 shineeseo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var partImage: UIImageView!
    
    //picker view 생성 -변수 선언과 동시에 초기화/ 나중에 초기화
    var piker : UIPickerView! //! -> 반드시 초기화를 할 것임을 명시
    var toolbar : UIToolbar!
    
    //함수로 안에 들어갈 데이터 배열 선언
    let parts : [String] = ["기획", "디자인", "서버", "android", "ios"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupPiker()
        setupToolbar()
    }
    //piker초기화
    func setupPiker() {
        piker = UIPickerView()
        //delegate를 위임받는 주체를 명시해줘야한다. (viewcontroller 자체가 위임받는다.)
        //밑에 구현한 것들을 정상적으로 수행할 수 있도록 한다.
        piker.delegate = self
        piker.dataSource = self
        //textfield 선택 -> 키보드가 아닌 piker로
        textField.inputView = piker
    }
    func setupToolbar() {
        toolbar = UIToolbar(frame : CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        let done = UIBarButtonItem(title: "done", style: .done, target: self, action: #selector(selectPart))
        let space = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        
        toolbar.setItems([space,done], animated: true)
        textField.inputAccessoryView = toolbar
    }
    //selector안에 들어감
    @objc func selectPart() {
        let row = piker.selectedRow(inComponent: 0)
        let part = parts[row]
        
        textField.text = part
        switch part {
        case "기획":
            partImage.image = UIImage(named: "sopt_doplan")
        case "디자인":
            partImage.image = UIImage(named: "sopt_dodesign")
        case "서버","android","ios":
            partImage.image = UIImage(named: "sopt_dodevelop")
        default:
            break
        }
        //done 버튼을 누르고 함수 실행 중 edit을 끝냄
        textField.endEditing(true)
        
    }
}

//delegate를 채택할 때 delegate관련 메소드만 따로 정의
//동작에 관련한 메소드만 정의함 (pickerview 자체의 뷰에 대한 것-> title 속성)
extension ViewController : UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return parts[row]//row index에 해당하는 data 를 반환
    }
}

//protocol -> optional method x (구현 해 줘야함)
//view 에 들어갈 데이터를 어떻게 설정해줄지에 대한 method선언
extension ViewController : UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        //pickerview data를 몇개 쓸 것인가
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //row가 몇 개인가
        return parts.count
    }
    
    
}
