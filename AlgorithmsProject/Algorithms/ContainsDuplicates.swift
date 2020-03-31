//
//  ContainsDuplicates.swift
//  AlgorithmsProject
//
//  Created by Igor Kruglik on 29.03.20.
//  Copyright © 2020 Igor Kruglik. All rights reserved.
//

import Foundation

public func containsDuplicates(a: [Int]) -> Bool {

    let countArray = a.count

    guard countArray > 1 else {
        return false
    }
        
    let sortedArray = a.sorted()

    for (index, element) in sortedArray.enumerated() {
        let nextIndex = index + 1

        guard nextIndex < countArray else {
            continue
        }

        if element == sortedArray[nextIndex] {
            return true
        }
    }
    
    return false
}
