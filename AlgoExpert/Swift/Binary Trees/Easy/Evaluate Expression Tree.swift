//
//  Evaluate Expression Tree.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/4/20.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension BinaryTree {
    func evaluateExpressionTree(_ tree: TreeNode) -> Int {
        guard let left = tree.left, let right = tree.right else { return tree.value }
        switch tree.value {
        case -1:
            return evaluateExpressionTree(left) + evaluateExpressionTree(right)
        case -2:
            return evaluateExpressionTree(left) - evaluateExpressionTree(right)
        case -3:
            return evaluateExpressionTree(left) / evaluateExpressionTree(right)
        case -4:
            return evaluateExpressionTree(left) * evaluateExpressionTree(right)
        default:
            return tree.value
        }
    }
}
