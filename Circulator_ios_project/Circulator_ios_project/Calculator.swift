//
//  ViewController.swift
//  Circulator_ios_project
//
//  Created by shineeseo on 2018. 10. 30..
//  Copyright © 2018년 shineeseo. All rights reserved.
//

import UIKit

class Calculator: UIViewController {

    @IBOutlet weak var btn_ac: UIButton!
    @IBOutlet weak var btn_plusminus: UIButton!
    @IBOutlet weak var btn_mod: UIButton!
    @IBOutlet weak var btn_divid: UIButton!
    @IBOutlet weak var btn_7: UIButton!
    @IBOutlet weak var btn_8: UIButton!
    @IBOutlet weak var btn_9: UIButton!
    @IBOutlet weak var btn_mul: UIButton!
    @IBOutlet weak var btn_4: UIButton!
    @IBOutlet weak var btn_5: UIButton!
    @IBOutlet weak var btn_6: UIButton!
    @IBOutlet weak var btn_min: UIButton!
    @IBOutlet weak var btn_1: UIButton!
    @IBOutlet weak var btn_2: UIButton!
    @IBOutlet weak var btn_3: UIButton!
    @IBOutlet weak var btn_plu: UIButton!
    @IBOutlet weak var btn_0: UIButton!
    @IBOutlet weak var btn_dec: UIButton!
    @IBOutlet weak var btn_equal: UIButton!
    @IBOutlet weak var textField: UITextField!
    
    //숫자 입력중
    var userIsInTyping: Bool = false
    var current_data = Double()
    var isPlus = false
    var isMinus = false
    var isMod = false
    var isMulti = false
    var isDiv = false
    var sum = Double()
    var cur_data = Double()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setup()
        
        
    }
    
    func setup() {
        btn_ac.layer.cornerRadius = 35
        btn_ac.layer.masksToBounds = true
        
        btn_plusminus.layer.cornerRadius = 35
        btn_plusminus.layer.masksToBounds = true
        
        btn_mod.layer.cornerRadius = 35
        btn_mod.layer.masksToBounds = true
        
        btn_divid.layer.cornerRadius = 35
        btn_divid.layer.masksToBounds = true
        
        btn_7.layer.cornerRadius = 35
        btn_7.layer.masksToBounds = true
        
        btn_8.layer.cornerRadius = 35
        btn_8.layer.masksToBounds = true
        
        btn_9.layer.cornerRadius = 35
        btn_9.layer.masksToBounds = true
        
        btn_mul.layer.cornerRadius = 35
        btn_mul.layer.masksToBounds = true
        
        btn_4.layer.cornerRadius = 35
        btn_4.layer.masksToBounds = true
        
        btn_5.layer.cornerRadius = 35
        btn_5.layer.masksToBounds = true
        
        btn_6.layer.cornerRadius = 35
        btn_6.layer.masksToBounds = true
        
        btn_min.layer.cornerRadius = 35
        btn_min.layer.masksToBounds = true
        
        btn_1.layer.cornerRadius = 35
        btn_1.layer.masksToBounds = true
        
        btn_2.layer.cornerRadius = 35
        btn_2.layer.masksToBounds = true
        
        btn_3.layer.cornerRadius = 35
        btn_3.layer.masksToBounds = true
        
        btn_plu.layer.cornerRadius = 35
        btn_plu.layer.masksToBounds = true
        
        btn_0.layer.cornerRadius = 35
        btn_0.layer.masksToBounds = true
        
        btn_dec.layer.cornerRadius = 35
        btn_dec.layer.masksToBounds = true
        
        btn_equal.layer.cornerRadius = 35
        btn_equal.layer.masksToBounds = true
    }

    @IBAction func clickButton(_ sender: UIButton){
        var data = sender.titleLabel?.text
        
        if userIsInTyping {
            //text를 옵셔널 타입에 보낼수 없어서 생기는 에러(옵셔널은 텍스트를 이해할 수 없다.-> ullable 타입인 display의 연관값을 가져와야 한다.)
            //display의 값이 nil이라면 에러가 뜬다.
            textField.text = textField.text! + data!
        }else{
            //입력중이 아니라면(처음 키패드를 눌렀을 때 0이 나오게)
            textField.text = data!
            userIsInTyping = true
        }
        
    
    }
    
    @IBAction func clickEqual(_ sender: UIButton) {
        userIsInTyping = false
        switch sender.titleLabel?.text {
        case "=":
            if isMinus {
                sum = sum - Double(textField.text!)!
                isMinus = false
            }
            if isPlus {
                sum = sum + Double(textField.text!)!
                isPlus = false
            }
            if isMulti {
                if sum == 0 {
                    sum = 1
                }
                sum = sum * Double(textField.text!)!
                isMulti = false
            }
            if isMod {
                if sum == 0 {
                    sum = 1
                }
                sum = sum.truncatingRemainder(dividingBy: Double(textField.text!)! )
                isMod = false
            }
            if isDiv {
                if sum == 0 {
                    sum = 1
                }
                sum = Double(textField.text!)!/sum
                isDiv = false
            }
            
            textField.text = String(sum)
            sum = 0
        case "+":
            if isPlus == false {
                current_data = Double(textField.text!)!
                textField.text=String(current_data)
                sum = sum + current_data
                userIsInTyping = false
                isPlus = true
            }
            
        case "-":
            if isMinus == false {
                current_data = Double(textField.text!)!
                textField.text=String(current_data)
                sum = current_data - sum
                userIsInTyping = false
                isMinus = true
            }
        case "x":
            if isMulti == false {
                current_data = Double(textField.text!)!
                textField.text=String(current_data)
                if sum == 0 {
                    sum = 1
                }
                sum = sum * current_data
                userIsInTyping = false
                isMulti = true
            }
        case "÷":
            if isMod == false {
                current_data = Double(textField.text!)!
                textField.text=String(current_data)
                if sum == 0 {
                    sum = 1
                }
                sum = current_data / sum
                userIsInTyping = false
                isMod = true
            }
        case "%":
            if isDiv == false {
                current_data = Double(textField.text!)!
                textField.text=String(current_data)
                if sum == 0 {
                    sum = 1
                }
                sum = sum.truncatingRemainder(dividingBy: current_data)
                
                userIsInTyping = false
                isDiv = true
            }
        case "+/-":
            current_data = Double(textField.text!)!
            textField.text = String(-1 * current_data)
        
        case "AC":
            sum = 0
            current_data = 0
            textField.text=""
        default:
            break
        }
        
    }
}

