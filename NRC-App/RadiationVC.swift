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
    var dose: Double
    var isPregnant: Bool
    var pregnantDose: Double
}

class RadiationVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var pSwitch: UISwitch!
    
    var pickerData: [String] = [String]()
    
    let sourceData: [String: Any] = [
        "Brain": ["Isotope": "99mTc DTPA", "dose": 3.6, "pregnant_dose": 14],
        "Hepatobiliary": ["Isotope": "", "dose": 0.0, "pregnant_dose": 0.0],
        "Bone": ["Isotope": "", "dose": 0.0, "pregnant_dose": 0.0],
        "Kidney": ["Isotope": "", "dose": 0.0, "pregnant_dose": 0.0],
        "Heart": ["Isotope": "", "dose": 0.0, "pregnant_dose": 0.0],
        "Tumor": ["Isotope": "", "dose": 0.0, "pregnant_dose": 0.0],
        
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
    
    func getItemFromDict(_ bodypart: String, isotope: String, isPregnant: Bool) -> Result {
        if let data = sourceData[bodypart] as? [[String:Any]] {
            var pos = 0
            for (index, val) in data.enumerated() {
                if(isotope == val["Isotope"] as? String){
                    pos = index
                    break
                }
            }
            var info = data[pos]
            
            return Result(bodypart: bodypart, isotope: isotope, dose: info["dose"] as! Double, isPregnant: isPregnant, pregnantDose: info["pregnant_dose"] as! Double)
        }else{
            print("Something went wrong, check the dictionary for any unimplemented structural changes")
            return Result(bodypart: bodypart, isotope: isotope, dose: 0.0, isPregnant: false, pregnantDose: 0.0)
        }
    }
    
    @IBAction func calculateResults(_ sender: Any) {
        
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
