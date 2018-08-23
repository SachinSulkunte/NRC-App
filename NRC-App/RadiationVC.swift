//
//  RadiationVC.swift
//  NRC-App
//
//  Created by Sachin Sulkunte on 8/3/18.
//  Copyright © 2018 NRC-interns. All rights reserved.
//

import UIKit

struct Result {
    var bodypart: String
    var isotope: String
    var cname: String
    var dose: Double
    var isPregnant: Bool
    var pregnantDose: Double
}

class RadiationVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var pSwitch: UISwitch!
    
    var pickerData: [String] = [String]()
    
    let sourceData: [String: Any] = [
        "Brain": ["isotope": "99mTc DTPA","cname":"Technetium 99m", "dose": 3.6, "pregnant_dose": 14],
        "Hepatobiliary": ["isotope": "99mTc SCO","cname":"Technetium 99m", "dose": 1.7, "pregnant_dose": 0.0],
        "Bone": ["isotope": "99mTc MDP","cname":"Technetium 99m", "dose": 4.2, "pregnant_dose": 4.2],
        "Kidney": ["isotope": "99mTc DTPA","cname":"Technetium 99m", "dose": 3.6, "pregnant_dose": 3.6],
        "Heart": ["isotope": "99mTc sestimibi", "cname":"Technetium 99m","dose": 9.9, "pregnant_dose": 9.9],
        "Liver": ["isotope": "99mTc disofenin/ mebrofenin","cname":"Technetium 99m", "dose": 0.0, "pregnant_dose": 6.0],
        
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //connect data
        self.picker.delegate = self
        self.picker.dataSource = self
        
        //initialize data into array
        pickerData = [String] (sourceData.keys)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //number of columns of data
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    //the data to return for the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func getItemFromDict(_ bodypart: String, isPregnant: Bool) -> Result? {
        if let data = sourceData[bodypart] as? [String:Any] {
            
            return Result(bodypart: bodypart, isotope: data["isotope"] as! String,cname: data["cname"] as! String, dose: data["dose"] as! Double, isPregnant: isPregnant, pregnantDose: data["pregnant_dose"] as! Double)
        }else{
            print("Something went wrong, check the dictionary for any unimplemented structural changes")
            return nil
        }
    }
    
    
    
    
    func updateResults() {
        
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
