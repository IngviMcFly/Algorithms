//
//  ArrayManipulation.swift
//  AlgorithmsProject
//
//  Created by Igor Kruglik on 28.03.20.
//  Copyright © 2020 Igor Kruglik. All rights reserved.
//

import Foundation

public func simpleArraySum(ar: [Int]) -> Int {
    return ar.reduce(0, +)
}

public func simpleMap(arr: [Int]) -> [Int] {
    return arr.map{ $0 * 10 }
}

func sumOfTwo(a: [Int], b: [Int], v: Int) -> Bool {
    
    guard !a.isEmpty, !b.isEmpty else {
        return false
    }
    
    var resultSet = Set<Int>()
    
    for i in a {
        resultSet.insert(v - i)
    }
    for i in b {
        if resultSet.contains(i) {
            return true
        }
    }
    
    return false
}


func mergeTwoSortedArrays(arr1: [Int], arr2: [Int]) -> [Int] {
    
    var result = [Int]()
    
    var i = 0
    var j = 0
    
    let arr1Count = arr1.count
    let arr2Count = arr2.count
    
    while i < arr1Count && j < arr2Count {
        
        if arr1[i] > arr2[j] {
            result.append(arr2[j])
            j += 1
            continue
        } else {
            result.append(arr1[i])
            i += 1
            continue
        }
        
    }
    
    while i < arr1Count {
        result.append(arr1[i])
        i += 1
    }
    
    while j < arr2Count {
        result.append(arr2[j])
        j += 1
    }
    
    return result
}
