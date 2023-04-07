//
//  main.swift
//  AlgoExpert
//
//  Created by Benson Lin on 2021/3/29.
//

import Foundation

let list = ListNode(-10, .init(-3, .init(0, .init(5, .init(9)))))
let tree = TreeNode(
    4,
    TreeNode(2,
             TreeNode(value: 1),
             TreeNode(value: 3)),
    TreeNode(6,
             TreeNode(value: 5),
             TreeNode(7, nil, TreeNode(value: 8))))


let chars = "aheaolabbhb"
let doc = "hello"
print(Program.string.generateDocument(chars, doc))















