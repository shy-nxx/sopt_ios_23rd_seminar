//
//  ViewController.swift
//  sopt_2sc_seminar
//
//  Created by shineeseo on 2018. 10. 13..
//  Copyright © 2018년 shineeseo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var progressbar: UIProgressView!
    @IBOutlet weak var boxView: UIView!
    @IBOutlet weak var baseView: UIView!
    @IBOutlet var secondView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        boxView.isHidden=true
        
        
    }
 
    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{ //first = 0 second = 1
            baseView.isHidden = false
            secondView.isHidden = true;
            
        } else {
            baseView.isHidden = true
            secondView.isHidden = false
        }
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        let data = sender.value //현재 슬라이더의 값
        textfield.text = "\(data)" //자동으로 문자열로 변환
    }
    @IBAction func switchAction(_ sender: UISwitch) {
        boxView.isHidden = !sender.isOn //boolean 값이기 때문에 스위치의 값이 변할 때 ishidden 값도 변경된다.
    }
    @IBAction func stepperAction(_ sender: UIStepper) {
        progressbar.progress = Float(sender.value)
    }
   
}

