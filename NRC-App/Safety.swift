//
//  Safety.swift
//  NRC-App
//
//  Created by Sachin Sulkunte on 8/13/18.
//  Copyright © 2018 NRC-interns. All rights reserved.
//

import UIKit

class Safety: UIViewController {
    
    @IBAction func didTapNRC(_ sender: Any) {
        if let url = NSURL(string: "https://www.nrc.gov"){ UIApplication.shared.open(url as URL, options: [:], completionHandler: nil) }
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
