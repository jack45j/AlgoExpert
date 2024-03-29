//
//  Validate TreeNode.swift
//  AlgoExpert
//
//  Created by Benson Lin on 2021/4/14.
//

import Foundation

extension BinarySearchTree {
    func validateTreeNode(tree: TreeNode) -> Bool {
        if let left = tree.left, let right = tree.right {
            if !(left.value < tree.value && right.value >= tree.value) {
                return false
            } else {
                return validateTreeNode(tree: left) && validateTreeNode(tree: right)
            }
        } else if let left = tree.left {
            if !(left.value < tree.value) {
                return false
            } else {
                return validateTreeNode(tree: left)
            }
        } else if let right = tree.right {
            if !(right.value >= tree.value) {
                return false
            } else {
                return validateTreeNode(tree: right)
            }
        } else {
            return true
        }
    }
}

