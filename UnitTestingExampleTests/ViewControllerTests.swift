//
//  ViewControllerTests.swift
//  UnitTestingExampleTests
//
//  Created by Leo Wirasanto on 20/03/20.
//  Copyright © 2020 Leo Wirasanto. All rights reserved.
//

import XCTest
@testable import UnitTestingExample

class ViewControllerTests: XCTestCase {
    let vc = ViewController()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_number_is_even() {
        let odd = 9
        let even = 12
        
        XCTAssertTrue(vc.isNumberEven(numb: even))
        XCTAssertFalse(vc.isNumberEven(numb: odd))
    }
    
    func test_sum_even_valued_number_fibonacci_sequence() {
        let limit = 4000000 // if limit was 4mio so the answer should be 4613732
        let answer = 4613732
    
        XCTAssertEqual(vc.subEvenValuedNumbersFibonacciSequence(limit), answer, "this should be 4613732")
    }

}
