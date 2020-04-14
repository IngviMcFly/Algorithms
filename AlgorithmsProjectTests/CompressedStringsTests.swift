//
//  CompressedStringsTests.swift
//  AlgorithmsProjectTests
//
//  Created by Igor Kruglik on 13.04.20.
//  Copyright © 2020 Igor Kruglik. All rights reserved.
//

import XCTest

@testable import AlgorithmsProject

class CompressedStringsTests: XCTestCase {

    func test_CompressedMinStr() {
        XCTAssertEqual(solution(S: "ABBBCCDDCCC", K: 3), 5)
    }
    
    func test_compressedforTwo() {
        XCTAssertEqual(solution(S: "ABCDDDEFG", K: 2), 6)
    }

}
