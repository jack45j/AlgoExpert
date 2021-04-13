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
      root.left = BST(value: 5)
      root.left!.left = BST(value: 2)
      root.left!.left!.left = BST(value: 1)
      root.left!.right = BST(value: 5)
      root.right = BST(value: 15)
      root.right!.left = BST(value: 13)
      root.right!.left!.right = BST(value: 14)
      root.right!.right = BST(value: 22)
    
print(Program.tree.findClosestValueInBST(tree: root, target: 13))
