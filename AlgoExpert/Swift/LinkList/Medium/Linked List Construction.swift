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
        if node === head {
            self.head = self.head?.next as? ListNodeWithPrev
        }
        
        if node === tail {
            self.tail = self.tail?.prev
        }
        
        if let next = node.next as? ListNodeWithPrev {
            next.prev = node.prev
        }
        
        if let prev = node.prev {
            prev.next = node.next
        }
        
        node.prev = nil
        node.next = nil
    }
    
    func removeNodesWithValue(value: Int) {
        var currentNode = head
        while currentNode != nil {
            let nodeToRemove = currentNode
            currentNode = currentNode?.next as? ListNodeWithPrev
            if nodeToRemove?.val == value {
                remove(node: nodeToRemove!)
            }
        }
    }
    
    func insertBefore(node: ListNodeWithPrev, nodeToInsert: ListNodeWithPrev) {
        if nodeToInsert === head, nodeToInsert === tail {
            return
        }
        
        remove(node: nodeToInsert)
        nodeToInsert.next = node
        nodeToInsert.prev = node.prev
        
        if let prev = node.prev {
            prev.next = nodeToInsert
        } else {
            head = nodeToInsert
        }
        
        node.prev = nodeToInsert
    }
    
    func insertAfter(node: ListNodeWithPrev, nodeToInsert: ListNodeWithPrev) {
        if nodeToInsert === head, nodeToInsert === tail {
            return
        }
        
        remove(node: nodeToInsert)
        nodeToInsert.prev = node
        nodeToInsert.next = node.next
        
        if let next = node.next {
            (next as? ListNodeWithPrev)?.prev = nodeToInsert
        } else {
            tail = nodeToInsert
        }
        
        node.next = nodeToInsert
    }
    
    func setHead(node: ListNodeWithPrev) {
        if head == nil {
            head = node
            tail = node
            return
        }
        insertBefore(node: head!, nodeToInsert: node)
    }
    
    func setTail(node: ListNodeWithPrev) {
        if tail == nil {
            setHead(node: node)
            return
        }
        insertAfter(node: tail!, nodeToInsert: node)
    }
    
    func insertAtPosition(position: Int, nodeToInsert: ListNodeWithPrev) {
        if position == 1 {
            setHead(node: nodeToInsert)
            return
        }

        var pointer = 1
        var currentNode = head
        while pointer != position, currentNode !== nil {
            if currentNode === tail {
                setTail(node: nodeToInsert)
                return
            }
            currentNode = currentNode?.next as? ListNodeWithPrev
            pointer += 1
        }
        
        if currentNode == nil {
            setTail(node: nodeToInsert)
        } else {
            insertAfter(node: currentNode!, nodeToInsert: nodeToInsert)
        }
    }
}
