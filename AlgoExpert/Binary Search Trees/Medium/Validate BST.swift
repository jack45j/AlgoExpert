//
//  Validate BST.swift
//  AlgoExpert
//
//  Created by Benson Lin on 2021/4/14.
//

import Foundation

extension BinarySearchTree {
    func validateBst(tree: BST) -> Bool {
        if let left = tree.left, let right = tree.right {
            if !(left.value < tree.value && right.value >= tree.value) {
                return false
            } else {
                return validateBst(tree: left) && validateBst(tree: right)
            }
        } else if let left = tree.left {
            if !(left.value < tree.value) {
                return false
            } else {
                return validateBst(tree: left)
            }
        } else if let right = tree.right {
            if !(right.value >= tree.value) {
                return false
            } else {
                return validateBst(tree: right)
            }
        } else {
            return true
        }
    }
}

