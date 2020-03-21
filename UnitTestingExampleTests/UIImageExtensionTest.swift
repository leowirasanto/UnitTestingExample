//
//  UIImageExtensionTest.swift
//  UnitTestingExampleTests
//
//  Created by Leo Wirasanto on 21/03/20.
//  Copyright © 2020 Leo Wirasanto. All rights reserved.
//

@testable import UnitTestingExample
import XCTest

class UIImageExtensionTest: XCTestCase {
    let imageClass = UIImageView()
    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func test_image_file_not_found() {
        let url_ = URL(string: "9gag.com")
        let promise = expectation(description: "Image not found!")
        guard let url = url_ else {
            XCTFail("url nil")
            return
        }
        imageClass.getData(from: url) { data, _, error in
            guard data != nil, error == nil else {
                promise.fulfill()
                return
            }
            XCTFail("Image found")
        }
    }

    func test_get_image_from_url_success() {
        let promise = expectation(description: "Status code: 200")
        let url_ = URL(string: Constant.DummyImageStringURL.dummyClassImage)
        guard let url = url_ else {
            XCTFail("url nil")
            return
        }
        imageClass.getData(from: url) { _, response, error in
            if let error = error {
                XCTFail("Failed to get image with error \(error)")
                return
            } else if let statusCode = (response as? HTTPURLResponse)?.statusCode {
                if statusCode == 200 {
                    promise.fulfill()
                } else {
                    XCTFail("Failed with status code : \(statusCode)")
                }
            }
        }
        wait(for: [promise], timeout: 5)
    }
}
