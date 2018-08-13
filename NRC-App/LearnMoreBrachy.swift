//
//  LearnMoreBrachy.swift
//  NRC-App
//
//  Created by angela sun on 8/13/18.
//  Copyright © 2018 NRC-interns. All rights reserved.
//

import UIKit

class LearnMoreBrachy: UIViewController {

    @IBOutlet var InterstitialText: [UILabel]!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func InterstitialSelect(_ sender: UIButton) {
        InterstitialText.forEach { (label) in
            label.isHidden = !label.isHidden
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
