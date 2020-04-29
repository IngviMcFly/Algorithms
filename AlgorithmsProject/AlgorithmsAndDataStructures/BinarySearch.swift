//
//  BinarySearch.swift
//  AlgorithmsProject
//
//  Created by Igor Kruglik on 15.04.20.
//  Copyright © 2020 Igor Kruglik. All rights reserved.
//

import Foundation

func binarySearchIterate(_ value: Int, array: [Int]) -> Int? {
    
    guard !array.isEmpty else { return nil }
    
    var lowerBound = 0
    var upperBound = array.count
    
    while lowerBound < upperBound {
        
        let midIndex = lowerBound + (upperBound - lowerBound) / 2
        
        if array[midIndex] == value {
            return midIndex
        } else if array[midIndex] < value {
            lowerBound = midIndex
        } else {
            upperBound = midIndex
        }

    }
    
    return nil
}

func binarySearchRecursive(_ value: Int, array: [Int]) -> Bool {
    
    guard !array.isEmpty else { return false }
    
    let midIndex = array.count / 2
    
    if array[midIndex] == value {
        return true
    } else if array[midIndex] < value {
        return binarySearchRecursive(value, array: Array(array[(midIndex + 1)...]))
    } else {
        return binarySearchRecursive(value, array: Array(array[..<midIndex]))
    }

}
