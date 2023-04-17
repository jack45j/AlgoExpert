//
//  Linked List Construction.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/4/17.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension DoublyLinkedList {
    func containsNodeWithValue(value: Int) -> Bool {
        var currentNode = self.head
        while currentNode != nil {
            if currentNode?.val == value {
                return true
            }
            currentNode = currentNode?.next as? ListNodeWithPrev
        }
        return false
    }
    
    func remove(node: ListNodeWithPrev) {
        
    }
    
    func removeNodesWithValue(value: Int) {
        
    }
    
    func insertBefore(node: ListNodeWithPrev, nodeToInsert: ListNodeWithPrev) {
        
    }
    
    func insertAfter(node: ListNodeWithPrev, nodeToInsert: ListNodeWithPrev) {
        
    }
    
    func setHead(node: ListNodeWithPrev) {
        self.head?.prev = node
        node.next = self.head
        self.head = node
    }
    
    func setTail(node: ListNodeWithPrev) {
        self.tail?.next = node
        node.prev = self.tail
    }
    
    func insertAtPosition(position: Int, nodeToInsert: ListNodeWithPrev) {
        
    }
}
