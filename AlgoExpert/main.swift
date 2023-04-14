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

let array = [1, 5, 23, 111]
print(Program.search.binarySearch1(array: array, target: 112))















