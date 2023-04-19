//https://www.algoexpert.io/questions/sum-of-linked-lists
//  Sum Of Linked List.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/4/19.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension LinkedLists {
    func sumOfLinkedLists(_ linkedListOne: LinkedList, _ linkedListTwo: LinkedList) -> LinkedList? {
        
        var carry = 0
        var p1: LinkedList? = linkedListOne
        var p2: LinkedList? = linkedListTwo
        
        var summedList: LinkedList?
        var currentNode = summedList
        while p1 != nil || p2 != nil || carry != 0 {
            var sum = (p1?.val ?? 0) + (p2?.val ?? 0) + carry
            carry = sum / 10
            sum = sum % 10
            
            let node = LinkedList(sum)
            if summedList != nil {
                currentNode?.next = node
                currentNode = currentNode?.next
            } else {
                summedList = node
                currentNode = node
            }
            
            p1 = p1?.next
            p2 = p2?.next
        }
        
        return summedList
    }
}
