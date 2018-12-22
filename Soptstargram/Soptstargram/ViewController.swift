//
//  ViewController.swift
//  Soptstargram
//
//  Created by shineeseo on 2018. 10. 5..
//  Copyright © 2018년 shineeseo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var hiddenText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imageView.isHidden = false;
        imageView2.isHidden = true;
        hiddenText.isHidden = true;
        //ImageView의 TabGesture 인식 시킨다.
        // create tap gesture recognizer
        let tapGesture = UITapGestureRecognizer(target: self,  action:#selector(imageTapped))
    
        // add it to the image view;
        self.imageView.addGestureRecognizer(tapGesture)
        // make sure imageView can be interacted with by user
        imageView.isUserInteractionEnabled = true
        
    }
    @objc func imageTapped(_ sender: UIGestureRecognizer) {
        // if the tapped view is a UIImageView then set it to imageview
        imageView.isHidden = !imageView.isHidden;
        imageView2.isHidden = !imageView2.isHidden;
        hiddenText.isHidden = !hiddenText.isHidden;
    }
    

}

