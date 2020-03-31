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
