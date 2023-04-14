//https://www.algoexpert.io/questions/remove-duplicates-from-linked-list
//  Remove Duplicates From Linked List.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/4/13.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension LinkedLists {
    func removeDuplicatesFromLinkedList(_ linkedList: LinkedList) -> LinkedList {
        guard linkedList.next != nil else { return linkedList }
        var lastValidNode: LinkedList? = linkedList
        var pointer: LinkedList? = linkedList
        while pointer != nil {
            if pointer?.val != lastValidNode?.val {
                lastValidNode?.next = pointer
                lastValidNode = lastValidNode?.next
            }
            pointer = pointer?.next
        }
        lastValidNode?.next = pointer
        return linkedList
    }
}
