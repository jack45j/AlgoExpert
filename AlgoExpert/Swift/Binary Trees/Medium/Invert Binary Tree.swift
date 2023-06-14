//
//  Invert Binary Tree.swift
//  AlgoExpert
//
//  Created by 20001255-林翌埕 on 2023/6/14.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension BinaryTree {
    func invertBinaryTree(tree: TreeNode?) {
        guard let tree = tree else { return }
        let tempLeftNode = tree.left
        tree.left = tree.right
        tree.right = tempLeftNode
        invertBinaryTree(tree: tree.left)
        invertBinaryTree(tree: tree.right)
    }
}
