//
//  WatchAppWatchTests.swift
//  WatchAppWatchTests
//
//  Created by Ben Chatelain on 4/11/16.
//  Copyright © 2016 Ben Chatelain. All rights reserved.
//

import XCTest
@testable import WatchApp_WatchKit_Extension

class WatchAppWatchTests: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testHello() {
        let interfaceController = InterfaceController()
        interfaceController.hello()
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
}
