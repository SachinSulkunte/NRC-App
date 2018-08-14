//
//  IntroVCViewController.swift
//  NRC-App
//
//  Created by Sachin Sulkunte on 8/3/18.
//  Copyright © 2018 NRC-interns. All rights reserved.
//

import UIKit

class IntroVCViewController: UIViewController {
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    
    @IBAction func button1_Pressed(_ sender: Any) {
    
        label1.text = "A radioisotope is one of the primary ingredients of both treatment and diagnostic procedures in the field of nuclear medicine. The elements on the periodic table come in different isotopes--different versions of the atom that share the same amount of protons but different amounts of electrons. A radioisotope is unstable--meaning it will decay into a different element or a more stable version of the same element over time."
    }
    
    @IBAction func button2_Pressed(_ sender: Any) {
    
        label2.text = "It all depends on the chemistry of the element. Some elements, like iodine, are naturally taken up by parts of the body such as the thyroid, and thus work well in procedures involving the thyroid. Others can be linked to substances called tracers which guide them to the designated part of the body."
    }
    
    @IBAction func button3_Pressed(_ sender: Any) {
    
        label3.text = "It can be, but not when regulated carefully, which is the role of the Nuclear Regulatory Commission. Doctors in the field also use the ALARA (As low as reasonably achievable) principle when selecting treatment. The radioisotopes used in medical procedures all have short half-lives –– the time it takes for half of the element to decay into a more stable form –– so the radiation won’t stick around. Also, the specific radioisotopes used in medical procedures are targeted only to kill cells which are bad for the body--such as those that are cancerous. The radiation they emit tends not to be more than what you would get naturally over the course of a few years."
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}





