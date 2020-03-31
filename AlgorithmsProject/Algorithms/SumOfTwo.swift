//
//  SumOfTwo.swift
//  AlgorithmsProject
//
//  Created by Igor Kruglik on 31.03.20.
//  Copyright © 2020 Igor Kruglik. All rights reserved.
//

import Foundation

func sumOfTwo(a: [Int], b: [Int], v: Int) -> Bool {
    
    var comp: [Int:Bool] = [:]

    for n in a {
        if let _ = comp[v-n] {
            // this complement is saved
        } else {
            comp[v-n] = true
        }
    }
    for n in b {
        if let _ = comp[n] {
            return true
        }
    }
    return false
}
