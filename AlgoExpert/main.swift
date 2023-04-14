//
//  main.swift
//  AlgoExpert
//
//  Created by Benson Lin on 2021/3/29.
//

import Foundation


let tree = TreeNode(
    4,
    TreeNode(2,
             TreeNode(value: 1),
             TreeNode(value: 3)),
    TreeNode(6,
             TreeNode(value: 5),
             TreeNode(7, nil, TreeNode(value: 8))))

let list = ListNode(1,1,1,3,4,4,4,5,6,6)!

let array = [55, 7, 8]
let matrix = [
    [ 1,   4,   7,  12,  15, 1000],
    [ 2,   5,  19,  31,  32, 1001],
    [ 3,   8,  24,  33,  35, 1002],
    [40,  41,  42,  44,  45, 1003],
    [99, 100, 103, 106, 128, 1004]
]
print(Program.search.searchInSortedMatrix(matrix: matrix, target: 0))















