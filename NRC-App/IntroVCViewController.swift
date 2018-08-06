//
//  IntroVCViewController.swift
//  NRC-App
//
//  Created by angela sun on 8/3/18.
//  Copyright © 2018 NRC-interns. All rights reserved.
//

import UIKit

class IntroVCViewController: UIViewController {
    @IBOutlet weak var whatisradiationdrop: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    @IBAction func handleSelection(_ sender: UIButton) {
        whatisradiationdrop.isHidden = !whatisradiationdrop.isHidden
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



