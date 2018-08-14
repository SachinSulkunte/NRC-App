//
//  IsotopeIViewController.swift
//  NRC-App
//
//  Created by Daniel on 8/13/18.
//  Copyright © 2018 NRC-interns. All rights reserved.
//

import UIKit


class IsotopeIViewController: UIPageViewController, UIPageViewControllerDataSource {
    
    
    
    lazy var viewControllerList: [UIViewController] = {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc1 = storyboard.instantiateViewController(withIdentifier: "i1")
        let vc2 = storyboard.instantiateViewController(withIdentifier: "i2")
        let vc3 = storyboard.instantiateViewController(withIdentifier: "i3")
        let vc4 = storyboard.instantiateViewController(withIdentifier: "i4")
        
        return [vc1,vc2,vc3,vc4]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataSource = self
        
        if let firstVC = viewControllerList.first {
            self.setViewControllers([firstVC], direction: .forward, animated: true, completion: nil)
        }
        
    }
    
    @IBAction func leaveChildViewController(_ sender: Any) {
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let vcIndex = viewControllerList.index(of: viewController) else {return nil}
        
        let previousIndex = vcIndex - 1
        
        guard previousIndex >= 0 else {return nil}
        guard viewControllerList.count > previousIndex else {return nil}
        
        return viewControllerList[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let vcIndex = viewControllerList.index(of: viewController) else{return nil}
        let nextIndex = vcIndex+1
        
        guard viewControllerList.count != nextIndex else {return nil}
        guard viewControllerList.count > nextIndex else {return nil}
        
        return viewControllerList[nextIndex]
    }
}

