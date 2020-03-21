//
//  Extension+UIViewController.swift
//  UnitTestingExample
//
//  Created by Leo Wirasanto on 21/03/20.
//  Copyright © 2020 Leo Wirasanto. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func setNavigation(_ title: String = "", _ tintColor: UIColor = .white, _ barColor: UIColor = #colorLiteral(red: 0.2039215686, green: 0.7803921569, blue: 0.3490196078, alpha: 1)) {
        self.navigationController?.navigationBar.barTintColor = barColor
        self.navigationController?.navigationBar.tintColor = tintColor
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: tintColor]
        self.title = title
    }
}
