//
//  MainMenuViewController.swift
//  BaybeeBump
//
//  Created by Kevin Baltazar Reyes on 3/18/17.
//  Copyright © 2017 Kevin Baltazar Reyes. All rights reserved.
//

import Foundation
import UIKit

class MainMenuViewController: UIPageViewController {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let currentIndex =  myViewControllers.index(of: viewController)!+1
        if currentIndex >= self.myViewControllers.count {
            return nil
        }
        return self.myViewControllers[currentIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let currentIndex =  myViewControllers.index(of: viewController)!-1
        if currentIndex < 0 {
            return nil
        }
        return self.myViewControllers[currentIndex]
    }
    
    var myViewControllers = Array(repeating:UIViewController(), count: 2)
    var pageView = UIPageViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc0 = storyboard.instantiateViewController(withIdentifier: "oneVC") as UIViewController
        let vc1 = storyboard.instantiateViewController(withIdentifier: "twoVC") as UIViewController
        
        self.myViewControllers = [vc0, vc1]
        self.setViewControllers([myViewControllers[0]], direction:.forward, animated:true, completion:nil)
        
    }
}
