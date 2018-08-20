//
//  CobaltMachine.swift
//  NRC-App
//
//  Created by angela sun on 8/19/18.
//  Copyright © 2018 NRC-interns. All rights reserved.
//

import UIKit

class CobaltMachine: UIViewController {
    
    @IBOutlet weak var howItWorks: UIImageView!
    @IBOutlet weak var actualMachine: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func SwitchPicture(_ sender: UIButton) {
        howItWorks.isHidden = !howItWorks.isHidden
        actualMachine.isHidden = !actualMachine.isHidden
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
