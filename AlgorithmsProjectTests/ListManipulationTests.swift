//
//  ListManipulationTests.swift
//  AlgorithmsProjectTests
//
//  Created by Igor Kruglik on 19.04.20.
//  Copyright © 2020 Igor Kruglik. All rights reserved.
//

import XCTest

@testable import AlgorithmsProject

class ListManipulationTests: XCTestCase {

    func test_removeKFromList() {
        
        let first = ListNode<Int>(3)
        let second  = ListNode<Int>(1)
        let third  = ListNode<Int>(2)
        let fourth  = ListNode<Int>(3)
        let fifth  = ListNode<Int>(4)
        let sixth  = ListNode<Int>(5)
        
        first.next = second
        second.next = third
        third.next = fourth
        fourth.next = fifth
        fifth.next = sixth
        
        let node = removeKFromList(l: first, k: 3)
        
        var array = [Int]()
        var current = node
        
        while true {
            if let value = current?.value {
                array.append(value)
            }
            current = current?.next
            if current == nil {
                break
            }
        }
        
        XCTAssertEqual(array, [1, 2, 4, 5])
    }

    

}
