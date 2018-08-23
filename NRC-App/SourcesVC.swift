//
//  SourcesVC.swift
//  NRC-App
//
//  Created by Sachin Sulkunte on 8/23/18.
//  Copyright © 2018 NRC-interns. All rights reserved.
//

import UIKit

class SourcesVC: UIViewController {

    @IBAction func didTapSource1(_ sender: Any) {
        
        if let url = NSURL(string: "https://www.radiologyinfo.org"){ UIApplication.shared.open(url as URL, options: [:], completionHandler: nil) }
    }
    
    @IBAction func didTapSource2(_ sender: Any) {
        
        if let url = NSURL(string: "https://www.ncbi.nlm.nih.gov/"){ UIApplication.shared.open(url as URL, options: [:], completionHandler: nil) }
    }
    
    @IBAction func didTapSource3(_ sender: Any) {
        
        if let url = NSURL(string: "https://www.iaea.org/resources/rpop/health-professionals/nuclear-medicine"){ UIApplication.shared.open(url as URL, options: [:], completionHandler: nil) }
    }
    
    @IBAction func didTapSource4(_ sender: Any) {
        
        if let url = NSURL(string: "https://www.nibib.nih.gov/science-education/science-topics/nuclear-medicine"){ UIApplication.shared.open(url as URL, options: [:], completionHandler: nil) }
    }
    
    @IBAction func didTapSource5(_ sender: Any) {
        
        if let url = NSURL(string: "http://www.snmmi.org/AboutSNMMI/Content.aspx?ItemNumber=15627")
        { UIApplication.shared.open(url as URL, options: [:], completionHandler: nil) }
    }
    
    @IBAction func didTapSource6(_ sender: Any) {
        
        if let url = NSURL(string: "https://www.grandviewresearch.com/industry-analysis/radiation-oncology-market"){ UIApplication.shared.open(url as URL, options: [:], completionHandler: nil) }
    }
    
    @IBAction func didTapSource7(_ sender: Any) {
        
        if let url = NSURL(string: "https://hps.org/hpspublications/articles/dosesfrommedicalradiation.html")
        { UIApplication.shared.open(url as URL, options: [:], completionHandler: nil) }
    }
    
    @IBAction func didTapSource8(_ sender: Any){
        
        if let url = NSURL(string: "https://www.accessdata.fda.gov/drugsatfda_docs/label/2005/021870lbl.pdf"){ UIApplication.shared.open(url as URL, options: [:], completionHandler: nil) }
        
    }
    
    @IBAction func didTapSource9(_ sender: Any){
        
        if let url = NSURL(string: "https://www.iaea.org/sites/default/files/55405810507.pdf")
        { UIApplication.shared.open(url as URL, options: [:], completionHandler: nil) }
        
    }
    
    @IBAction func didTapSource10(_ sender: Any){
        
        if let url = NSURL(string: "https://radiopaedia.org/articles/technetium-agents")
        { UIApplication.shared.open(url as URL, options: [:], completionHandler: nil) }
        
    }
    
    @IBAction func didTapSource11(_ sender: Any){
        
        if let url = NSURL(string: "https://www.mayfieldclinic.com/PE-SPECT.htm")
        { UIApplication.shared.open(url as URL, options: [:], completionHandler: nil) }
    }
    
    @IBAction func didTapSource12(_ sender: Any){
        
        if let url = NSURL(string: "https://www.radiologyinfo.org/en/info.cfm?pg=bone-scan")
        { UIApplication.shared.open(url as URL, options: [:], completionHandler: nil) }
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
