//
//  TreeManipulation.swift
//  AlgorithmsProject
//
//  Created by Igor Kruglik on 28.04.20.
//  Copyright © 2020 Igor Kruglik. All rights reserved.
//

import Foundation

public class Tree<T> {
    
    private let value: T
    private let leftValue: Tree?
    private let rightValue: Tree?
    
    init(_ value: T) {
        self.value = value
        self.leftValue = nil
        self.rightValue = nil
    }
    
}
