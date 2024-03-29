//
//  main.swift
//  AlgoExpert
//
//  Created by Benson Lin on 2021/3/29.
//

import Foundation


//let tree = TreeNode(
//    4,
//    TreeNode(2,
//             TreeNode(value: 1),
//             TreeNode(value: 3)),
//    TreeNode(6,
//             TreeNode(value: 5),
//             TreeNode(7, nil, TreeNode(value: 8))))

let list = ListNode(1,1,1,3,4,4,4,5,6,6)!

let array = [55, 7, 8]
let matrix = [
    [ 1,   4,   7,  12,  15, 1000],
    [ 2,   5,  19,  31,  32, 1001],
    [ 3,   8,  24,  33,  35, 1002],
    [40,  41,  42,  44,  45, 1003],
    [99, 100, 103, 106, 128, 1004]
]

//print(Program.arrays.transposeMatrix(matrix))

let head = ListNodeWithPrev(0)
let node1 = ListNodeWithPrev(1)
head.next = node1
node1.prev = head
let node2 = ListNodeWithPrev(2)
node1.next = node2
node2.prev = node1
let node3 = ListNodeWithPrev(3)
node2.next = node3
node3.prev = node2
let node4 = ListNodeWithPrev(4)
node3.next = node4
node4.prev = node3
let node5 = ListNodeWithPrev(5)
node4.next = node5
node5.prev = node4
let node6 = ListNodeWithPrev(6)
node5.next = node6
node6.prev = node5
let node7 = ListNodeWithPrev(7)
node6.next = node7
node7.prev = node6
let node8 = ListNodeWithPrev(8)
node7.next = node8
node8.prev = node7
let node9 = ListNodeWithPrev(9)
node8.next = node9
node9.prev = node8
//let tail = ListNodeWithPrev(10)
//node9.next = tail
//tail.prev = node9

//let doubly = DoublyLinkedList(head: head, tail: tail.prev)

let graph = Node(name: "A")
graph.addChild(name: "B").addChild(name: "C").addChild(name: "D")
graph.children[0].addChild(name: "E").addChild(name: "F")
graph.children[2].addChild(name: "G").addChild(name: "H")
graph.children[0].children[1].addChild(name: "I").addChild(name: "J")
graph.children[2].children[0].addChild(name: "K")

let tree = TreeNode(value: -1)
tree.left = TreeNode(value: 2)
tree.right = TreeNode(value: -2)
tree.right!.left = TreeNode(value: 5)
tree.right!.right = TreeNode(value: 1)

tree.dump()
Program.binaryTree.invertBinaryTree(tree: tree)
tree.dump()

var distances = [5, 25, 15, 10, 15]
var fuel = [1, 2, 1, 0, 3]
print(Program.greedy.validStartingCity_bruteForce(distances, fuel, 10))










