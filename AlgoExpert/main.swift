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

print(Program.binaryTree.nodeDepths(tree))

//var array = [4, 2, 1, 3, 6]
//var array1 = [1, 0]
//var emptyArray: [Int] = []
//var SingleEleArray: [Int] = [1]
//var equalEleArray: [Int] = [1, 1, 1, 1, 1, 1]
//
//
//
////print(arrays.largestRange(array: array))
//
//
//
//
//let root = BST(value: 10)
//
//root.left = .init(value: 5)
//root.left?.left = .init(value: 2)
//root.left?.left?.left = .init(value: 1)
//root.left?.right = .init(value: 5)
//root.left?.right?.right = .init(value: 11)
//
//root.right = .init(value: 15)
//root.right?.left = .init(value: 13)
//root.right?.left?.right = .init(value: 14)
//root.right?.right = .init(value: 22)
//
//var rootTree = root.remove(value: 10, parentNode: nil)
//
//print(binarySearchTree.validateBst(tree: root))


//extension Array where Element == Int {
//	// 擴充 [Int] 型別的陣列這個function
//
//	// "條件成立"是一個function的概念
//	// "條件成立"就是一個input丟Int output出 Boolean的一個function
//	func find(條件成立: ((Int) -> Bool)) -> Self {
//		var result = [Int]()
//		for val in self {
//			if 條件成立(val) { result.append(val) }
//		}
//		return result
//	}
//}
//
//var array = [1, 2, 3, 4, 5, 6]
//
//print("找到被2整除 \(array.find(條件成立: { $0 % 2 == 0 }))")
//
//print("找到 >= 3 \(array.find(條件成立: { $0 >= 3 }))")
//
//print("找到被3整除 \(array.find(條件成立: { $0 % 3 == 0 }))")



















