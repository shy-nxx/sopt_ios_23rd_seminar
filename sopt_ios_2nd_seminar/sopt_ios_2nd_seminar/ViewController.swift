//
//  ViewController.swift
//  sopt_ios_2nd_seminar
//
//  Created by shineeseo on 2018. 10. 29..
//  Copyright © 2018년 shineeseo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    
    @IBOutlet weak var viewSwitcher: UISwitch!
    
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var boxView: UIView!
    @IBOutlet weak var progressView: UIProgressView!
    
    //아래는 RGB값을 가질 변수입니다.
    //인터페이스 빌더에서 오렌지 색상의 기본값을 각각의 변수에 할당하였습니다.
    var red: CGFloat = 253
    var green: CGFloat = 148
    var blue: CGFloat = 38
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setUpView()
        setupViewColor()
    }
    
    func setUpView() {
        firstView.isHidden = false
        secondView.isHidden = true
        viewSwitcher.isOn = false
        boxView.isHidden = true
        
        // ---------------------------------------------------------
        // 아래의 addTarget은 UIControl을 상속받는 모든 뷰들에 추가할 수 있습니다.
        // action: 에는 selector로 실행시킬 함수를 설정하고
        // for: 에는 어떤 control event를 사용할 지 선택합니다.
        // 아래에서는 각 Slider들에 makeRGBColor 함수를 설정해주었고
        // switch에는 switchAction 함수를 설정해 주었습니다.
        redSlider.addTarget(self, action: #selector(makeRGBColor(_:)), for: .valueChanged)
        greenSlider.addTarget(self, action: #selector(makeRGBColor(_:)), for: .valueChanged)
        blueSlider.addTarget(self, action: #selector(makeRGBColor(_:)), for: .valueChanged)
        
        viewSwitcher.addTarget(self, action: #selector(switchAction(_:)), for: .valueChanged)
    }

    // red, green, blue 값을 이용하여 rgb color를 계산하고 뷰의 배경색을 설정해주는 함수입니다.
    func setupViewColor() {
        let rgbColor = UIColor.init(red: red/255, green: green/255, blue: blue/255, alpha: 1.0)
        firstView.backgroundColor = rgbColor
        segmentControl.tintColor = rgbColor
    }
    
    // segment에 따라 보여질 뷰를 선택하는 것을 isHidden 속성을 이용하여 설정합니다.
    // switch 구문을 통해 selectedSegmentIndex를 케이스 0과 1로 나누었습니다.
    @IBAction func segmentControl(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            firstView.isHidden = false
            secondView.isHidden = true
        case 1:
            firstView.isHidden = true
            secondView.isHidden = false
        default:
            break
        }
    }
    
    // 각 slider의 value를 위에서 선언한 red, green, blue 각각의 변수에 설정하는 함수입니다.
    // switch 구문을 통해 sender가 어떤 slider인지 case를 나눠 셋팅하였습니다.
    @objc func makeRGBColor(_ sender: UISlider) {
        switch sender {
        case redSlider:
            red = CGFloat(sender.value)
        case greenSlider:
            green = CGFloat(sender.value)
        case blueSlider:
            blue = CGFloat(sender.value)
        default:
            break
        }
        setupViewColor() // 위에서 값이 바뀌고 나면 setupViewColor를 호출하여 배경색을 바꿔줍니다.
    }
    
    // switch가 on인지 off인지 isOn 속성에 따라서 조건문을 작성하였습니다.
    @objc func switchAction(_ sender: UISwitch) {
        if sender.isOn {
            boxView.isHidden = false
        } else {
            boxView.isHidden = true
        }
    }
    
    // Stepper의 설정된 Minimum, Maximum, Step에 따라
    // ProgressView의 progress에 Stepper의 value를 넣어줍니다.
    // ProgressView는 0~1 의 값을 나타냅니다.
    @IBAction func stepperAction(_ sender: UIStepper) {
        progressView.progress = Float(sender.value)
    }
    
    
}

