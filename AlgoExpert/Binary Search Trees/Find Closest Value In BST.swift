//
//  Find Closest Value In BST.swift
//  AlgoExpert
//
//  Created by Yi-Cheng Lin on 2021/4/11.
//

import Foundation

extension BinarySearchTree {
    func findClosestValueInBST(tree: BST?, target: Int) -> Int {
        guard let tree = tree else { return 0 }
        var closest = tree.value
        search(node: tree, target: target, closest: &closest)
        return closest
    }
    
    private func search(node: BST?, target: Int, closest: inout Int) {
        guard let node = node else { return }
        print(node.value)
        if abs(target - closest) > abs(target - node.value) {
            // 更靠近
            closest = node.value
        }
        
        if target < node.value {
            // 小於所以找左邊
            if let left = node.left {
                search(node: left, target: target, closest: &closest)
            }
        } else if target > node.value {
            // 大於所以找右邊
            if let right = node.right {
                search(node: right, target: target, closest: &closest)
            }
        } else {
            return
        }
    }
    
    
    
    
    
    private func algoSolution(tree: BST?, target: Int, closest: inout Int) -> Int {
        var currentNode = tree
        while currentNode != nil {
            print(currentNode?.value)
            if let node = currentNode {
                let closestDifference = target - closest
                let currentDifference = target - node.value
                
                if closestDifference.magnitude > currentDifference.magnitude {
                    closest = node.value
                }
            }
            
            if let node = currentNode, target < node.value {
                currentNode = node.left
            } else if let node = currentNode, target > node.value {
                currentNode = node.right
            } else {
                break
            }
        }
        
        return closest
    }
}

