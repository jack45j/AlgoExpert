//
//  ListNode.swift
//  AlgoExpert
//
//  Created by Yi-Cheng Lin on 2023/3/12.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

public class LinkedLists {}
typealias LinkedList = ListNode

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    public convenience init?(_ lists: Int...) {
        guard !lists.isEmpty else { return nil }
        self.init(lists[0])
        var currentNode: ListNode? = self
        for i in 1..<lists.count {
            currentNode?.next = ListNode(lists[i])
            currentNode = currentNode?.next
        }
    }
}

extension Optional where Wrapped == ListNode & Dumpable {
    func dump() {
        return
    }
}

extension ListNode: Dumpable {
    func dump() {
        func dumpHelper(listNode: ListNode?, isRoot: Bool = false, result: inout String) {
            if let node = listNode {
                if isRoot {
                    result += "(\(node.val))"
                } else {
                    result = result + "->" + "(\(node.val))"
                }
                dumpHelper(listNode: node.next, result: &result)
            }
        }
        
        var result = ""
        dumpHelper(listNode: self, isRoot: true, result: &result)
        print(result)
    }
}
