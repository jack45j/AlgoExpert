//
//  Remove Kth Node From End.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/4/18.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension ListNodeWithPrev {
    func removeKthNodeFromEnd(head: LinkedList, k: Int) {
        var fastPointer: LinkedList? = head
        var prevOfNodeToRemove: LinkedList? = head
        for _ in 1...k {
            fastPointer = fastPointer?.next
        }
        
        while fastPointer?.next != nil {
            fastPointer = fastPointer?.next
            prevOfNodeToRemove = prevOfNodeToRemove?.next
        }
        
        if fastPointer == nil, let second = head.next {
            head.val = second.val
            head.next = second.next
            return
        }
        
        if prevOfNodeToRemove != nil {
            prevOfNodeToRemove?.next = prevOfNodeToRemove?.next?.next
        }
    }
}
