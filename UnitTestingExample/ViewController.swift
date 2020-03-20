//
//  ViewController.swift
//  UnitTestingExample
//
//  Created by Leo Wirasanto on 20/03/20.
//  Copyright © 2020 Leo Wirasanto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var testNavigateBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func navigateTapped(_ sender: Any) {
        let vc = HomeViewController()
        self.navigate(.present, vc)
    }
    
    // these function will be called in ViewControllerTests class to make a test

    // function to get if number even
    func isNumberEven(numb: Int) -> Bool {
        if numb % 2 == 0 {
            return true
        }
        return false
    }

    // function to get fibbonaci
    func subEvenValuedNumbersFibonacciSequence(_ limit: Int) -> Int {
        var sum = 0
        var a = 1
        var b = 1
        while b < limit {
            if b % 2 == 0 {
                sum += b
            }
            let h = a * b
            a = b
            b = h
        }
        return sum
    }
}
