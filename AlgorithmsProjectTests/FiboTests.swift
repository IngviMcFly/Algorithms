//
//  FiboTests.swift
//  AlgorithmsProjectTests
//
//  Created by Igor Kruglik on 07.04.20.
//  Copyright © 2020 Igor Kruglik. All rights reserved.
//

import XCTest

@testable import AlgorithmsProject

class FiboTests : XCTestCase {
    
    //  Time Complexity: O(2^n)
    //  Space Complexity: O(2^n)
    func test_fiboRecusive() {
        XCTAssertEqual(fib(10), 89)
    }
    
    //  Time Complexity: O(n)
    //  Space Complexity: O(n)
    func test_fiboLoop() {
        XCTAssertEqual(fibLoop(10), 89)
    }
    
    //    Time Complexity: O(n)
    //    Space Complexity: O(1)
    func test_fibLoop_optimized() {
        XCTAssertEqual(fib(10), 89)
    }
}
