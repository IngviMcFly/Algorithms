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

    func test_sumOfTwo() {
        XCTAssertTrue(sumOfTwo(a: [1, 2, 3], b: [10, 20, 30, 40], v: 42))
    }

    func test_mergingOfTwoSortedArrays() {
        let arr1 = [1, 7, 17, 25, 38]
        let arr2 = [2, 5, 17, 29, 31]
        
        XCTAssertEqual(mergeTwoSortedArrays(arr1: arr1, arr2: arr2), [1, 2, 5, 7, 17, 17, 25, 29, 31, 38])
    }
    
    func test_uniqueElement() {
        XCTAssertEqual(singleNumber([4,1,2,1,2]), 4)
        XCTAssertEqual(singleNumber([2,2,1]), 1)
    }
    
    func test_maxSubArray() {
        XCTAssertEqual(maxSubArray([-2,1,-3,4,-1,2,1,-5,4]), 6)
        XCTAssertEqual(maxSubArray([-2,1]), 1)
    }
    
}

func maxSubArray(_ nums: [Int]) -> Int {
    
    var maxSum = nums.first!
    var current = maxSum
    
    for i in (1..<nums.count) {
        
        let sum = nums[i] + current
        
        if sum > nums[i] {
            current = sum
        } else {
            current = nums[i]
        }
        
        if current > maxSum {
            maxSum = current
        }
        
    }
    
    return maxSum
}
