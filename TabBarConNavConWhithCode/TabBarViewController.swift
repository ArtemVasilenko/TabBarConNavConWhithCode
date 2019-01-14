//
//  TabBarViewController.swift
//  TabBarConNavConWhithCode
//
//  Created by Артем on 1/8/19.
//  Copyright © 2019 Артем. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .black
        
        let redViewController = RedViewController()
        redViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 1)
        
        let blueViewController = BlueViewController()
        blueViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 2)
        
        let navViewController = OrangeNavViewController()
        navViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 3)
        
        self.viewControllers = [redViewController, blueViewController, navViewController]
        
        self.selectedViewController = self.viewControllers?[2]
        
    }
    


}
