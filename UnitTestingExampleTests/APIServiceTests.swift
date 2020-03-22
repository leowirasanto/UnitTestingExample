//
//  APIServiceTests.swift
//  UnitTestingExampleTests
//
//  Created by Leo Wirasanto on 22/03/20.
//  Copyright © 2020 Leo Wirasanto. All rights reserved.
//

import XCTest
@testable import UnitTestingExample

class APIServiceTests: XCTestCase {
    var api: APIService!

    override func setUp() {
        api = APIService.shared
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    // FIXME: couldn't use this test because it returns
    //
    /*
     ld: warning: Could not find or use auto-linked framework 'Alamofire'
     ld: warning: Could not find or use auto-linked framework 'SwiftyJSON'
     Undefined symbols for architecture x86_64:
       "static Alamofire.URLEncoding.default.getter : Alamofire.URLEncoding", referenced from:
           UnitTestingExampleTests.APIServiceTests.test_request_failed() -> () in APIServiceTests.o
     ld: symbol(s) not found for architecture x86_64
     clang: error: linker command failed with exit code 1 (use -v to see invocation)
     */
    func test_request_failed() {
//        let url = "http://www.google.com/user123"
//        let promise = expectation(description: "Request failed and pass the test")
//        api.request(url: url, method: .get, encoding: .default) { (result) in
//            switch result {
//            case .success( _):
//                XCTFail("Test fail, because it return 200")
//            case .failure( _):
//                promise.fulfill()
//            }
//        }
    }

}
