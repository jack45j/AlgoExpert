//
//  Find Kth Largest Value In TreeNode.swift
//  AlgoExpert
//
//  Created by Benson Lin on 2022/12/30.
//  Copyright © 2022 Benson Lin. All rights reserved.
//

import Foundation

extension TreeNode {
    func findKthLargestValueInTreeNode(_ tree: TreeNode, _ k: Int) -> Int {
        var k = k
        var kLargestValue = -1
        func reverseTraverse(_ tree: TreeNode?) {
            guard let tree = tree, k > 0 else { return }
            print(tree.value)
            reverseTraverse(tree.right)
            k -= 1
            if k == 0 {
                kLargestValue = tree.value
            }
            reverseTraverse(tree.left)
        }
        
        reverseTraverse(tree)
        return kLargestValue
    }
}
