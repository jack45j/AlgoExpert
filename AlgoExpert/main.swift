//
//  main.swift
//  AlgoExpert
//
//  Created by Benson Lin on 2021/3/29.
//

import Foundation

let root = TreeNode(value: 10)
root.left = TreeNode(value: 5)
root.left!.left = TreeNode(value: 2)
root.left!.left!.left = TreeNode(value: 1)
root.left!.right = TreeNode(value: 5)
root.right = TreeNode(value: 15)
root.right!.right = TreeNode(value: 22)

//var tree = TreeNode(value: 1)
//tree.left = TreeNode(value: 2)
//tree.right = TreeNode(value: 3)
//tree.left!.left = TreeNode(value: 4)
//tree.left!.right = TreeNode(value: 5)
//tree.right!.left = TreeNode(value: 6)
//tree.right!.right = TreeNode(value: 7)
//tree.left!.left!.left = TreeNode(value: 8)
//tree.left!.left!.right = TreeNode(value: 9)

//print(Program.binaryTree.nodeDepths(tree))


let list = ListNode(-10, .init(-3, .init(0, .init(5, .init(9)))))

let tree = TreeNode(4,
                    TreeNode(2,
                             TreeNode(value: 1),
                             TreeNode(value: 3)),
                    TreeNode(6,
                             TreeNode(value: 5),
                             TreeNode(value: 7)))



tree.dump()

//let tree = Program.binarySearchTree.sortedListToTreeNode(list)
//var result = [Int]()
//print(TreeNode(value: 0).inOrderTraversal(tree: tree, array: &result))
//print(result)
//
//print(Program.arrays.prisonAfterNDaysViolent([1,1,0,1,1,0,0,1], 300663720))
//print("-------------")
//print(Program.arrays.prisonAfterNDays([1,1,0,1,1,0,0,1], 300663720))


















