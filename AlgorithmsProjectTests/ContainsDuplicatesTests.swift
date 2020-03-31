//
//  ContainsDuplicatesTests.swift
//  AlgorithmsProjectTests
//
//  Created by Igor Kruglik on 29.03.20.
//  Copyright © 2020 Igor Kruglik. All rights reserved.
//

import XCTest

@testable import AlgorithmsProject

class ContainsDuplicatesTests: XCTestCase {

    func test_containsDuplicates_true() {
        
        let array = [1, 2, 3, 1]
        
        XCTAssertTrue(containsDuplicates(a: array))
    }

    func test_containsDuplicates_false() {
        let array = [3, 1]
        XCTAssertFalse(containsDuplicates(a: array))
    }
}
