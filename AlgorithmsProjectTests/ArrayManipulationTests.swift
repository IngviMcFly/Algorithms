//
//  ArrayManipulationTests.swift
//  AlgorithmsProjectTests
//
//  Created by Igor Kruglik on 29.03.20.
//  Copyright © 2020 Igor Kruglik. All rights reserved.
//

import XCTest

@testable import AlgorithmsProject

class ArrayManipulationTests: XCTestCase {
    
    let array = [1, 2, 3, 4, 10, 11]

    func test_simpleArraySum() {
        XCTAssertEqual(31, simpleArraySum(ar: array))
    }
    
    func test_mapArray() {
        XCTAssertEqual([10, 20, 30, 40, 100, 110], simpleMap(arr: array))
    }

}
