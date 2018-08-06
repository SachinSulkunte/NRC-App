//
//  IntroVCViewController.swift
//  NRC-App
//
//  Created by angela sun on 8/3/18.
//  Copyright © 2018 NRC-interns. All rights reserved.
//

import UIKit

class IntroVCViewController: UIViewController {
    var button = dropDownTxt()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        button = dropDownTxt.init(frame:CGRect(x: 0, y: 0, width: 0, height: 0))
        button.setTitle("What is a radioisotope?", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(button)
        button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 150).isActive = true
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

class dropDownTxt: UIButton {
    override init(frame: CGRect) {
        super.init(frame:frame)
        
        self.backgroundColor = UIColor.darkGray
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class dropDownView: UIView, UITableViewDelegate,UITableViewDataSource {
    var dropDownOptions = [String]()
    func numberofSections(in tableView: UITableView) -> Int { return 1
    }
    func tableView (in tableView: UITableView, numberofRowsInSection section: Int) -> Int {
        return dropdownOptions.count
    }
}
