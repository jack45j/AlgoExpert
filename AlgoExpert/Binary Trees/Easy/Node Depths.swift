//
//  Node Depths.swift
//  AlgoExpert
//
//  Created by Benson Lin on 2023/1/1.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension BinaryTree {
    
    func nodeDepths(_ root: BST?) -> Int {
        func dfsTraversal(node: BST?, depth: Int, sum: inout Int)  {
            guard let value = node?.value else { return }
            print("[BT] Traverse to \(node?.value)")
            sum += depth
            dfsTraversal(node: node?.left, depth: depth + 1, sum: &sum)
            dfsTraversal(node: node?.right, depth: depth + 1, sum: &sum)
        }
        
        var sum = 0
        dfsTraversal(node: root, depth: 0, sum: &sum)
        
        
        return sum
    }
}
