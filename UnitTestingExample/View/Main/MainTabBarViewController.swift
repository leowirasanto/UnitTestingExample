//
//  MainTabBarViewController.swift
//  UnitTestingExample
//
//  Created by Leo Wirasanto on 20/03/20.
//  Copyright © 2020 Leo Wirasanto. All rights reserved.
//

import Foundation
import UIKit

class MainTabBarViewController: UITabBarController {
    
    private let homeVC = HomeViewController()
    private let profileVC = ProfileViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeVC.tabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 0)
        profileVC.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 1)
        let view = [homeVC, profileVC].map { UINavigationController(rootViewController: $0) }
        viewControllers = view
    }
    
//    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
//        
//    }
}
