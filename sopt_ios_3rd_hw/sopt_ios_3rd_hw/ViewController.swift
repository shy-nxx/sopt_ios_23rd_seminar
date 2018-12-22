//
//  ViewController.swift
//  sopt_ios_3rd_hw
//
//  Created by shineeseo on 2018. 11. 5..
//  Copyright © 2018년 shineeseo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    
    var picker : UIPickerView!
    var toolbar : UIToolbar!
    
    let parts : [String] = ["기획", "디자인", "Android", "iOS", "서버"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupPicker()
        setupToolbar()
    }
    func setupPicker() {
        picker = UIPickerView()
        //delegate를 위임받는 주체를 명시해줘야한다. (viewcontroller 자체가 위임받는다.)
        //밑에 구현한 것들을 정상적으로 수행할 수 있도록 한다.
        picker.delegate = self
        picker.dataSource = self
        textField.inputView = picker
    }
    func setupToolbar() {
        toolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        let done = UIBarButtonItem(title: "done", style: .done, target: self, action: #selector(selectPart))
        let space = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        toolbar.setItems([space,done], animated: true)
        textField.inputAccessoryView = toolbar
        
    }
    @objc func selectPart() {
        let row = picker.selectedRow(inComponent: 0)
        let part = parts[row]
        
        textField.text = part
        switch part {
        case "기획":
            imageView.image = UIImage(named: "sopt_doplan")
            
        case "디자인":
            imageView.image = UIImage(named: "sopt_dodesign")
            
        case "Android", "iOS", "서버":
            imageView.image = UIImage(named: "sopt_dodevelop")
            
        default:
            break
        }
        textField.endEditing(true)
    }
}
extension ViewController : UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return parts[row]
    }
}
extension ViewController : UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return parts.count
    }
}
