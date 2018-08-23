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
    var drug: String
    var cname: String
    var dose: Double
    var isPregnant: Bool
    var pregnantDose: Double
}

class RadiationVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var pSwitch: UISwitch!
    
    @IBOutlet weak var isotopeNameLabel: UILabel!
    
    
    @IBOutlet weak var drugNameLabel: UILabel!
    
    @IBOutlet weak var doseLabel: UILabel!
    
    @IBOutlet weak var fetalDoseLabel: UILabel!
    
    @IBOutlet weak var backgroundDoseLabel: UILabel!
    
    @IBOutlet weak var dentalXrayLabel: UILabel!
    
    @IBOutlet weak var flightLabel: UILabel!
    
    @IBOutlet weak var chestXrayLabel: UILabel!
    
    
    @IBOutlet weak var currentlyGettingText: UILabel!
    
    var pickerData: [String] = [String]()
    
    let sourceData: [String: Any] = [
        
        "Hepatobiliary": ["drug": "SCO","cname":"Technetium 99m", "dose": 1.7, "pregnant_dose": 0.0],
        "Brain": ["drug": "DTPA","cname":"Technetium 99m", "dose": 3.6, "pregnant_dose": 14.0],
        "Bone": ["drug": "MDP","cname":"Technetium 99m", "dose": 4.2, "pregnant_dose": 4.2],
        "Kidney": ["drug": "DTPA","cname":"Technetium 99m", "dose": 3.6, "pregnant_dose": 3.6],
        "Heart": ["drug": "Sestimibi", "cname":"Technetium 99m","dose": 9.9, "pregnant_dose": 9.9],
        "Liver": ["drug": "Disofenin/ Mebrofenin","cname":"Technetium 99m", "dose": 0.0, "pregnant_dose": 6.0],
        
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //connect data
        self.picker.delegate = self
        self.picker.dataSource = self
        
        //initialize data into array
        pickerData = [String] (sourceData.keys)
        
        self.updateResults(bodypart: pickerData[0])
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
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        self.updateResults(bodypart: pickerData[row])
    }
    @IBAction func buttonValChanged(_ sender: Any) {
        if(pSwitch.isOn){
            currentlyGettingText.text = "The fetus is getting:"
        }else{
            currentlyGettingText.text = "You are currently getting:"
        }
        
        self.updateResults(bodypart: pickerData[picker.selectedRow(inComponent: 0)])
    }
    
    typealias Rational = (num : Int, den : Int)
    
    func rationalApproximation(of x0 : Double, withPrecision eps : Double = 1.0E-6) -> Rational {
        var x = x0
        var a = x.rounded(.down)
        var (h1, k1, h, k) = (1, 0, Int(a), 1)
        
        while x - a > eps * Double(k) * Double(k) {
            x = 1.0/(x - a)
            a = x.rounded(.down)
            (h1, k1, h, k) = (h, k, h1 + Int(a) * h, k1 + Int(a) * k)
        }
        return (h, k)
    }
    
    func fractionToString(fraction: Rational) -> String {
        return "" + String(fraction.num) + "/" + String(fraction.den)
    }
    
    func getItemFromDict(_ bodypart: String, isPregnant: Bool) -> Result? {
        if let data = sourceData[bodypart] as? [String:Any] {
            print(data)
            return Result(bodypart: bodypart, drug: data["drug"] as! String,cname: data["cname"] as! String, dose: data["dose"] as! Double, isPregnant: isPregnant, pregnantDose: data["pregnant_dose"] as! Double)
        }else{
            print("Something went wrong, check the dictionary for any unimplemented structural changes")
            return nil
        }
    }
    
    func createString(title: String, str: String) -> String {
        let max = 40
        let titleLength = title.count
        let bodyLength = str.count
        let remaining = max - titleLength - bodyLength
        
        var space = ""
        for _ in 0...remaining-1{
            space += "-"
        }
        return title + space + " " + str
    }
    
    
    func updateResults(bodypart: String) {
        let res = getItemFromDict(bodypart, isPregnant: pSwitch.isOn)
        
        isotopeNameLabel.text = "Isotope: " + (res?.cname)!;
        drugNameLabel.text = createString(title: "Drug", str: (res?.drug)!)
        doseLabel.text = createString(title: "Effective Dose", str: String( (res?.dose)!)) + " mSv"
        fetalDoseLabel.text = createString(title: "Fetal Dose", str: String( (res?.pregnantDose)!)) + " mSv"
        let dose = (res?.dose)!
        
        
        var usedDose = 0.0
        if(res?.isPregnant)!{
            usedDose = (res?.pregnantDose)!
        }else{
            usedDose = dose
        }
        
        let natualBackgroundDose = 3.1
        let dosage = usedDose/natualBackgroundDose
        var str = ""
        let frac = rationalApproximation(of: dosage)
        if(dosage < 1){
            if(frac.den < 10){
                str = fractionToString(fraction: frac)
            }else{
                str = String((dosage * 100).rounded() / 10)
            }
        }else{
            str = String((dosage * 100).rounded() / 10)
        }
        
        backgroundDoseLabel.text = str + " x"
        
        let dental_xray_dose = 5.0
        let flight = 40.0
        let chest_x_ray = 100.0
        
        
        let dProduct = (Int) (usedDose/(dental_xray_dose/1000))
        var dText = ""
        if(dProduct > 1){
            dText = String(dProduct) + " Dental X-rays"
        }else{
            dText = String(dProduct) + " Dental X-ray"
        }
        dentalXrayLabel.text = dText
        
        let fProduct = (Int) (usedDose/(flight/1000))
        var fText = ""
        if(fProduct > 1){
            fText = String(fProduct) + " Flights from New York to LA"
        }else{
            fText = String(fProduct) + " Flight from New York to LA"
        }
        flightLabel.text = fText
        
        
        let cProduct = (Int) (usedDose/(chest_x_ray/1000))
        var cText = ""
        if(cProduct > 1){
            cText = String(cProduct) + " Chest X-rays"
        }else{
            cText = String(cProduct) + " Chest X-ray"
        }
        chestXrayLabel.text = cText
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
