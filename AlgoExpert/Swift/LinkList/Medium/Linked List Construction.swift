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
        (node.next as? ListNodeWithPrev)?.prev = node.prev
        node.prev?.next = node.next
    }
    
    func removeNodesWithValue(value: Int) {
        var currentNode = head
        while currentNode != nil {
            if currentNode?.val == value {
                guard let toRemove = currentNode else { continue }
                remove(node: toRemove)
            }
            currentNode = currentNode?.next as? ListNodeWithPrev
        }
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
        self.tail = node
    }
    
    func insertAtPosition(position: Int, nodeToInsert: ListNodeWithPrev) {
        
    }
}
