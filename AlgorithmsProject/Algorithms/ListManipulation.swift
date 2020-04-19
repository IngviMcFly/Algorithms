//
//  ListManipulation.swift
//  AlgorithmsProjectTests
//
//  Created by Igor Kruglik on 19.04.20.
//  Copyright © 2020 Igor Kruglik. All rights reserved.
//

import Foundation

// Singly-linked lists are already defined with this interface:
public class ListNode<T> {
    public var value: T
    public var next: ListNode<T>?
    public init(_ x: T) {
        self.value = x
        self.next = nil
    }
}
//
func removeKFromList(l: ListNode<Int>?, k: Int) -> ListNode<Int>? {

    if  l == nil {
        return nil
    }

    var firstNode: ListNode<Int>? = nil
    var currentNode: ListNode<Int>? = nil
    var lastNode: ListNode<Int>? = nil
    
    var current = l!
    
    while true {
        if (current.value != k) {
            // since this node isnt k, set our variables and proceed on
            // set currentNode
            currentNode = current;
            // the set the previous nodes next = this node
            if let lastNode = lastNode {
                lastNode.next = currentNode
            }
            // set lastNode to this current node
            lastNode = currentNode;
            // set the first node if it hasnt been set
            if firstNode == nil {
                firstNode = currentNode
            }
        }
        
        // when we hit the end, bail out.
        if current.next == nil {
            break
        }
        
        let next = current.next!
        current.next = nil
        current = next
    }

    return firstNode
}
