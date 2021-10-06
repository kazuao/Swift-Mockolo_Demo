//
//  Mockolo_DemoTests.swift
//  Mockolo-DemoTests
//
//  Created by kazunori.aoki on 2021/10/06.
//

import XCTest
@testable import Mockolo_Demo

class Mockolo_DemoTests: XCTestCase {
    
    func testMock() {
        let mock = FooMock(num: 5)
        XCTAssertEqual(mock.numSetCallCount, 1)
        
        mock.barHandler = { arg in
            return String(arg)
        }
        XCTAssertEqual(mock.barCallCount, 1)
    }

}
