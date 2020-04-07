//
//  FiboTask.swift
//  AlgorithmsProject
//
//  Created by Igor Kruglik on 06.04.20.
//  Copyright © 2020 Igor Kruglik. All rights reserved.
//

import Foundation

public func fibRecursive(_ n: Int) -> Int {
    guard n > 1 else { return n }
    return fibRecursive(n-1) + fibRecursive(n-2)
}

public func fibLoop(_ n: Int) -> Int {
    var fibs: [Int] = [1, 1]
    (2...n).forEach { i in
        fibs.append(fibs[i - 1] + fibs[i - 2])
    }
    return fibs.last!
}

public func fib(_ n: Int) -> Int {
    var a = 1
    var b = 1
    guard n > 1 else { return a }
        
    (2...n).forEach { _ in
        (a, b) = (a + b, a)
    }
    
    return a
}
