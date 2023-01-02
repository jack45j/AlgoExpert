//
//  main.swift
//  AlgoExpert
//
//  Created by Benson Lin on 2021/3/29.
//

import Foundation

//let root = BST(value: 10)
//root.left = BST(value: 5)
//root.left!.left = BST(value: 2)
//root.left!.left!.left = BST(value: 1)
//root.left!.right = BST(value: 5)
//root.right = BST(value: 15)
//root.right!.right = BST(value: 22)

var tree = BST(value: 1)
tree.left = BST(value: 2)
tree.right = BST(value: 3)
tree.left!.left = BST(value: 4)
tree.left!.right = BST(value: 5)
tree.right!.left = BST(value: 6)
tree.right!.right = BST(value: 7)
tree.left!.left!.left = BST(value: 8)
tree.left!.left!.right = BST(value: 9)

//print(Program.binaryTree.nodeDepths(tree))



var array: [Int] = [1, 6]
print(GreedyAlgorithms().minimumWaitingTime(&array))


















