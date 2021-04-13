//
//  main.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2021/3/29.
//

import Foundation

var array = [4, 2, 1, 3, 6]
var array1 = [1, 0]
var emptyArray: [Int] = []
var SingleEleArray: [Int] = [1]
var equalEleArray: [Int] = [1, 1, 1, 1, 1, 1]



//print(Program.arrays.largestRange(array: array))

    
    

let root = BST(value: 10)

root.left = .init(value: 5)
root.left?.left = .init(value: 2)
root.left?.left?.left = .init(value: 1)
root.left?.right = .init(value: 5)
root.left?.right?.right = .init(value: 11)

root.right = .init(value: 15)
root.right?.left = .init(value: 13)
root.right?.left?.right = .init(value: 14)
root.right?.right = .init(value: 22)

var rootTree = root.remove(value: 10, parentNode: nil)

print(Program.binarySearchTree.validateBst(tree: root))

