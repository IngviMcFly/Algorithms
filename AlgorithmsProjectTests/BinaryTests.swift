//
//  BinaryTests.swift
//  AlgorithmsProjectTests
//
//  Created by Igor Kruglik on 15.04.20.
//  Copyright © 2020 Igor Kruglik. All rights reserved.
//

import XCTest

@testable import AlgorithmsProject

class BinaryTests: XCTestCase {
    
    let numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67]

    func test_binary_search_iterate() {
        XCTAssertEqual(binarySearchIterate(43, array: numbers), 13)
    }

    func test_binary_search_recursive() {
        XCTAssertEqual(binarySearchRecursive(43, array: numbers), true)
    }
    
}
