//
//  TimelineViewController.swift
//  Makestagram
//
//  Created by Willson Li on 6/30/16.
//  Copyright © 2016 Make School. All rights reserved.
//

import UIKit

class TimelineViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarController?.delegate = self
        // if the view controller is presented from a UITabBarViewController (as is the case in Makestagram), this property will store a reference to it.
    }
}

// MARK: Tab Bar Delegate

extension TimelineViewController: UITabBarControllerDelegate {
    
    func tabBarController(tabBarController: UITabBarController, shouldSelectViewController viewController: UIViewController) -> Bool {
        if (viewController is PhotoViewController) {
            print("Take Photo")
            return false
        } else {
            return true
        }
    }
}
