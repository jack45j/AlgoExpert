//
//  Min Height TreeNode.swift
//  AlgoExpert
//
//  Created by Benson Lin on 2022/12/29.
//  Copyright © 2022 Benson Lin. All rights reserved.
//

import Foundation

extension BinarySearchTree {
    func minHeightTreeNode(_ array: [Int]) -> TreeNode? {
        
        guard !array.isEmpty else { return nil }
        let midIndex = (array.count - 1) / 2
        
        if midIndex >= 0 {
            let TreeNode = TreeNode(value: array[midIndex])
            TreeNode.left = minHeightTreeNode(Array(array[0..<midIndex]))
            TreeNode.right = minHeightTreeNode(Array(array[midIndex+1..<array.count]))
            return TreeNode
        }
        
        return nil
    }
}
