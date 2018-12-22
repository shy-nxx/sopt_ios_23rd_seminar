//
//  ThirdViewController.swift
//  helloworld
//
//  Created by shineeseo on 2018. 9. 29..
//  Copyright © 2018년 shineeseo. All rights reserved.
//

import UIKit

class ThirdViewController: ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func goBackToOneButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "unwindSegueToVC1", sender: self)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
//    @IBAction func dismissCurrentVC(_ sender: Any) {
//        dismiss(animated: true, completion: nil)
//    }
//
   

}
