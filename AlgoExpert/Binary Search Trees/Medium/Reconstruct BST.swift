//
//  Reconstruct BST.swift
//  AlgoExpert
//
//  Created by Benson Lin on 2022/12/30.
//  Copyright © 2022 Benson Lin. All rights reserved.
//

import Foundation

extension BinarySearchTree {
    func reconstructBst(_ preOrderTraversalValues: [Int]) -> BST {
        guard let firstValue = preOrderTraversalValues.first else { fatalError() }
        let tree = BST(value: firstValue)
        let preOrderTraversalValues = preOrderTraversalValues.dropFirst()
        
        for value in preOrderTraversalValues {
            tree.insert(value: value)
        }
        
        return tree
    }
}
