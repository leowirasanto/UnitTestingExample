//
//  DateExtensionTests.swift
//  UnitTestingExampleTests
//
//  Created by Leo Wirasanto on 22/03/20.
//  Copyright © 2020 Leo Wirasanto. All rights reserved.
//

import XCTest
@testable import UnitTestingExample

class DateExtensionTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_convert_date_to_string() {
        let _date = Date()
        XCTAssertTrue(_date.convertDateToString() != "", "Convert success because it doesn't return empty string")
    }
}
