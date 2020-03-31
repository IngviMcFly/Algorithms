//
//  SumOfTwoTests.swift
//  AlgorithmsProjectTests
//
//  Created by Igor Kruglik on 31.03.20.
//  Copyright © 2020 Igor Kruglik. All rights reserved.
//

import XCTest

@testable import AlgorithmsProject

class SumOfTwoTests: XCTestCase {

    func test_sumOfTwo() {
        XCTAssertTrue(sumOfTwo(a: [1, 2, 3], b: [10, 20, 30, 40], v: 42))
    }

}
