//
//  Merging Linked List.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/4/19.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension LinkedLists {
    // O(m + n) time | O(n) space
    func mergingLinkedLists(_ linkedListOne: LinkedList, _ linkedListTwo: LinkedList) -> LinkedList? {
        var visited: [LinkedList: Bool] = [:]
        var currentNode: LinkedList? = linkedListOne
        
        while let current = currentNode {
            visited[current] = true
            currentNode = current.next
        }
        
        currentNode = linkedListTwo
        while let current = currentNode {
            if visited[current] == true {
                return current
            }
            currentNode = current.next
        }
        
        return nil
    }
    
    // O(m + n) time | O(1) space
    func mergingLinkedLists1(_ linkedListOne: LinkedList, _ linkedListTwo: LinkedList) -> LinkedList? {
        var current1: LinkedList? = linkedListOne
        var current2: LinkedList? = linkedListTwo
        
        while current1 !== current2 {
            if current1 == nil {
                current1 = linkedListTwo
            } else {
                current1 = current1!.next
            }
            
            if current2 == nil {
                current2 = linkedListOne
            } else {
                current2 = current2!.next
            }
        }
        
        return current1
    }
}
