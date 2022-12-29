//
//  BST Traversal.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2022/12/29.
//  Copyright © 2022 Benson Lin. All rights reserved.
//

import Foundation

extension BST {
    @discardableResult
    func inOrderTraversal(tree: BST?, array: inout [Int]) -> [Int] {
        guard let value = tree?.value else { return [] }
        inOrderTraversal(tree: tree?.left, array: &array)
        array.append(value)
        inOrderTraversal(tree: tree?.right, array: &array)
        return array
    }
    
    @discardableResult
    func preOrderTraversal(tree: BST?, array: inout [Int]) -> [Int] {
        guard let value = tree?.value else { return [] }
        array.append(value)
        preOrderTraversal(tree: tree?.left, array: &array)
        preOrderTraversal(tree: tree?.right, array: &array)
        return array
    }
    
    @discardableResult
    func postOrderTraversal(tree: BST?, array: inout [Int]) -> [Int] {
        guard let value = tree?.value else { return [] }
        postOrderTraversal(tree: tree?.left, array: &array)
        postOrderTraversal(tree: tree?.right, array: &array)
        array.append(value)
        return array
    }
    
    func insert(value: Int) {
        if value < self.value {
            if let left = left {
                left.insert(value: value)
            } else {
                left = .init(value: value)
            }
        } else {
            if let right = right {
                right.insert(value: value)
            } else {
                right = .init(value: value)
            }
        }
    }
}
