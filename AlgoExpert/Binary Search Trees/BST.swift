//
//  File.swift
//  AlgoExpert
//
//  Created by Benson Lin on 2021/4/13.
//

import Foundation

class BST {
    var value: Int?
    var left: BST?
    var right: BST?
    
    init(value: Int) {
        self.value = value
        left = nil
        right = nil
    }
    
    func dump() {
    }
}

extension BST {
    @discardableResult
    func inOrderTraversal(tree: BST?, array: inout [Int]) -> [Int] {
        guard let tree = tree, let value = tree.value else { return [] }
        inOrderTraversal(tree: tree.left, array: &array)
        array.append(value)
        inOrderTraversal(tree: tree.right, array: &array)
        return array
    }
    
    @discardableResult
    func preOrderTraversal(tree: BST?, array: inout [Int]) -> [Int] {
        guard let tree = tree, let value = tree.value else { return [] }
        array.append(value)
        preOrderTraversal(tree: tree.left, array: &array)
        preOrderTraversal(tree: tree.right, array: &array)
        return array
    }
    
    @discardableResult
    func postOrderTraversal(tree: BST?, array: inout [Int]) -> [Int] {
        guard let tree = tree, let value = tree.value else { return [] }
        postOrderTraversal(tree: tree.left, array: &array)
        postOrderTraversal(tree: tree.right, array: &array)
        array.append(value)
        return array
    }
}
