//https://leetcode.com/problems/binary-tree-level-order-traversal-ii/description/
//  107-Binary Tree Level Order Traversal II .swift
//  AlgoExpert
//
//  Created by Yi-Cheng Lin on 2023/3/12.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension TreeNode {
    
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        var queue: [TreeNode?] = []
        var result: [[Int]] = []
        
        guard let root = root else { return [] }
        queue.append(root)
        traverse(queue: queue, result: &result)
        return result.reversed()
    }
    
    private func traverse(queue: [TreeNode?], result: inout [[Int]]) {
        var nextQueue: [TreeNode?] = []
        guard !queue.isEmpty else { return }
        result.append(queue.compactMap { $0?.value })
        // print("Queue: \(queue.map { $0?.val })")
        for node in queue {
            guard let node = node else { continue }
            if let leftNode = node.left {
                nextQueue.append(leftNode)
            }
            if let rightNode = node.right {
                nextQueue.append(rightNode)
            }
        }
        traverse(queue: nextQueue, result: &result)
    }
}
