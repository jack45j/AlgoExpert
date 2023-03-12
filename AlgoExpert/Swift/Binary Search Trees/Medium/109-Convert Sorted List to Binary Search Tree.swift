//https://leetcode.com/problems/convert-sorted-list-to-binary-search-tree/
//  109-Convert Sorted List to Binary Search Tree.swift
//  AlgoExpert
//
//  Created by Yi-Cheng Lin on 2023/3/12.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension BinarySearchTree {
    func sortedListToTreeNode(_ head: ListNode?) -> TreeNode? {
        
        return construct(head: head,tail: nil)
    }
    
    private func construct(head: ListNode?, tail: ListNode?) -> TreeNode? {
        guard head !== tail else { return nil }
        var fastP: ListNode? = head
        var slowP: ListNode? = head
        while fastP !== tail, fastP?.next !== tail {
            slowP = slowP?.next
            fastP = fastP?.next?.next
        }
        
        guard let value = slowP?.val else { return nil }
        let node = TreeNode(value,
                            construct(head: head, tail: slowP),
                            construct(head: slowP?.next, tail: tail))
        return node
    }
}
