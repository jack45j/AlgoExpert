//
//  Find Closest Value In BST.swift
//  AlgoExpert
//
//  Created by Yi-Cheng Lin on 2021/4/11.
//

import Foundation

extension Tree {
    func findClosestValueInBST(tree: BST?, target: Int) -> Int {
        guard let tree = tree else { return 0 }
        var closest = tree.value
        return algoSolution(tree: tree, target: target, closest: &closest)
    }
    
    private func search(node: BST?, target: Int, closest: inout Int) -> Int {
        guard let node = node else { return closest }
        if target - node.value < closest {
            
        }
        return -1
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

