//
//  TreeNode Traversal.swift
//  AlgoExpert
//
//  Created by Benson Lin on 2022/12/29.
//  Copyright © 2022 Benson Lin. All rights reserved.
//

import Foundation

extension Optional where Wrapped == TreeNode {
    func levelOrderTraversal() -> [[Int]] {
        guard let self = self else { return [] }
        return self.levelOrderTraversal()
    }
    
    func preOrderTraversal() -> [Int] {
        guard let self = self else { return [] }
        return self.preOrderTraversal()
    }
    
    func inOrderTraversal() -> [Int] {
        guard let self = self else { return [] }
        return self.inOrderTraversal()
    }
    
    func postOrderTraversal() -> [Int] {
        guard let self = self else { return [] }
        return self.postOrderTraversal()
    }
}

extension TreeNode {
    func levelOrderTraversal() -> [[Int]] {
        func helper(tree: TreeNode?, level: Int = 0, result: inout [[Int]]) {
            guard let tree = tree else { return }
            if level == result.count { result.append([]) }
            
            result[level].append(tree.value)
            helper(tree: tree.left, level: level + 1, result: &result)
            helper(tree: tree.right, level: level + 1, result: &result)
        }
        
        var result = [[Int]]()
        helper(tree: self, result: &result)
        return result
    }
    
    func preOrderTraversal() -> [Int] {
        func helper(tree: TreeNode?, result: inout [Int]) {
            guard let tree = tree else { return }
            
            result.append(tree.value)
            helper(tree: tree.left, result: &result)
            helper(tree: tree.right, result: &result)
        }
        
        var result = [Int]()
        helper(tree: self, result: &result)
        return result
    }
    
    func inOrderTraversal() -> [Int] {
        func helper(tree: TreeNode?, result: inout [Int]) {
            guard let tree = tree else { return }
            
            helper(tree: tree.left, result: &result)
            result.append(tree.value)
            helper(tree: tree.right, result: &result)
        }
        
        var result = [Int]()
        helper(tree: self, result: &result)
        return result
    }
    
    func postOrderTraversal() -> [Int] {
        func helper(tree: TreeNode?, result: inout [Int]) {
            guard let tree = tree else { return }
            
            helper(tree: tree.left, result: &result)
            helper(tree: tree.right, result: &result)
            result.append(tree.value)
        }
        
        var result = [Int]()
        helper(tree: self, result: &result)
        return result
    }
}

extension TreeNode {
    @discardableResult
    func insert(value: Int) -> Self {
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
        
        return self
    }
}
