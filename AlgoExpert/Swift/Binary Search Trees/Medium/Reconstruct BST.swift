//
//  Reconstruct TreeNode.swift
//  AlgoExpert
//
//  Created by Benson Lin on 2022/12/30.
//  Copyright © 2022 Benson Lin. All rights reserved.
//

import Foundation

extension BinarySearchTree {
    func reconstructTreeNode(_ preOrderTraversalValues: [Int]) -> TreeNode {
        guard let firstValue = preOrderTraversalValues.first else { fatalError() }
        let tree = TreeNode(value: firstValue)
        let preOrderTraversalValues = preOrderTraversalValues.dropFirst()
        
        for value in preOrderTraversalValues {
            tree.insert(value: value)
        }
        
        return tree
    }
}
