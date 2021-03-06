//
//  StringExtensionTests.swift
//  UnitTestingExampleTests
//
//  Created by Leo Wirasanto on 22/03/20.
//  Copyright © 2020 Leo Wirasanto. All rights reserved.
//

import XCTest
@testable import UnitTestingExample

class StringExtensionTests: XCTestCase {

    override func setUp() {
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_show_student_class_name_with_B() {
        let name = "B"
        XCTAssertEqual(name, "Class 'B'")
    }
    
    func test_date_formatter_failed_because_wrong_initial_format() {
        let dateString = "31 03 2019 11:11:03"
        let result = dateString.formatStringDate(with: "dd MM yyyy HH:mm",to: "dd MM yy")
        XCTAssertEqual(result, nil)
    }
    
    func test_date_formatter_success_with_default_format() {
        let dateString = "2019-03-31 11:11:03"
        let result = dateString.formatStringDate()
        XCTAssertEqual(result, "31 March 19 11:11")
    }
    
    func test_convert_string_to_date() {
        let stringDate = Date().convertDateToString()
        let result = stringDate.toDate()
        XCTAssertTrue(result != nil, "Convert date success if result not nil")
    }
}
