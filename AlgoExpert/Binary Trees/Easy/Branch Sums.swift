//
//  Branch Sums.swift
//  AlgoExpert
//
//  Created by Benson Lin on 2022/12/31.
//  Copyright © 2022 Benson Lin. All rights reserved.
//

import Foundation

extension BinaryTree {
    func branchSums(root: BST) -> [Int] {
        
        func dfsTraversal(node: BST?, _ result: inout [Int], sum: Int)  {
            guard let value = node?.value else { return }
            print("[BT] Traverse to \(node?.value)")
            if node?.left != nil || node?.right != nil {
                dfsTraversal(node: node?.left, &result, sum: sum + value)
                dfsTraversal(node: node?.right, &result, sum: sum + value)
            } else {
                result.append(sum + value)
            }
        }
        
        var result: [Int] = []
        dfsTraversal(node: root, &result, sum: 0)
        
        
        return result
    }
}
