//
//  WhatToExpectEBRT.swift
//  NRC-App
//
//  Created by angela sun on 8/22/18.
//  Copyright © 2018 NRC-interns. All rights reserved.
//

import UIKit

class WhatToExpectEBRT: UIViewController {

    @IBOutlet weak var TreatmentPlanningText: UILabel!
    @IBOutlet weak var SimulationText: UILabel!
    @IBOutlet weak var TreatmentText: UILabel!
    
    @IBOutlet weak var TreatmentPlanningButton: UIButton!
    @IBOutlet weak var SimulationButton: UIButton!
    @IBOutlet weak var TreatmentButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SimulationSwitch(_ sender: UIButton) {
       SimulationText.isHidden = !self.SimulationText.isHidden
        SimulationButton.isHidden = !self.SimulationButton.isHidden
        
    }
    
    @IBAction func TreatmentPlanningSwitch(_ sender: UIButton) {
        TreatmentPlanningText.isHidden = !TreatmentPlanningText.isHidden
        TreatmentPlanningButton.isHidden = !TreatmentPlanningButton.isHidden
    }
    @IBAction func TreatmentSwitch(_ sender: UIButton) {
        TreatmentText.isHidden = !TreatmentText.isHidden
        TreatmentButton.isHidden = !TreatmentButton.isHidden
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
