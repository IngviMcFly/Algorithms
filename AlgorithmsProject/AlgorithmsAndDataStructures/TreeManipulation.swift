//
//  TreeManipulation.swift
//  AlgorithmsProject
//
//  Created by Igor Kruglik on 28.04.20.
//  Copyright © 2020 Igor Kruglik. All rights reserved.
//

import Foundation

public class TreeNode<T> {
    
    private let value: T
    
    public var leftValue: TreeNode?
    public var rightValue: TreeNode?
    
    public weak var parent: TreeNode?
    
    init(_ value: T) {
        self.value = value
        self.leftValue = nil
        self.rightValue = nil
        self.parent = nil
    }
    
}
