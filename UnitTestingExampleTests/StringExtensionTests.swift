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
    var stringExt: String!

    override func setUp() {
        stringExt = String()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_show_student_class_name_with_B() {
        let student = Student(id: 0, fullname: "Rick", ppUrl: Constant.DummyImageStringURL.dummyBoyStudent, classId: "B")
        let name = student.classId?.className()
        XCTAssertEqual(name!, "Class 'B'")
    }

}
