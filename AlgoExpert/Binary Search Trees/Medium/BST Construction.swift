//
//  BST Construction.swift
//  AlgoExpert
//
//  Created by Benson Lin on 2021/4/13.
//

import Foundation

extension BST {
    @discardableResult
    func contains(value: Int) -> Bool {
        guard value != self.value else { return true }
        if value < self.value, let left = left {
            return left.contains(value: value)
        } else if value > self.value, let right = right {
            return right.contains(value: value)
        }
        
        return false
    }
    
	@discardableResult
    func remove(value: Int, parentNode: BST?) -> BST {
        var parentNode = parentNode
		var currentNode: BST? = self
		
		while let node = currentNode {
			if value < node.value {
				currentNode = node.left
				parentNode = node
			} else if value > node.value {
				currentNode = node.right
				parentNode = node
			} else if value == node.value {
				// Start to remove element
				
				if let _ = node.left, let right = node.right {
					// if has both side of child
					node.value = right.findMinValue().value
					right.remove(value: node.value, parentNode: node)
				} else if parentNode == nil {
					// top most node
					if let left = node.left {
						node.value = left.value
						node.left = left.left
						node.right = left.right
					} else if let right = node.right {
						node.value = right.value
						node.left = right.left
						node.right = right.right
					}
				} else if let parent = parentNode {
					// not the top most node
					// This current node is not possible to has both child
					if parent.left === node {
						if let left = node.left {
							parent.left = left
						} else {
							parent.left = node.right
						}
					} else if parent.right === node {
						if let left = node.left {
							parent.right = left
						} else {
							parent.right = node.right
						}
					}
				}
				break
			}
		}
        return self
    }
	
	@discardableResult
	func findMinValue() -> BST {
		var currentNode: BST? = self
		if let _ = left {
			while let left = currentNode?.left {
				currentNode = left
			}
		} else {
			guard let right = right else { return self }
			return right.findMinValue()
		}
		
		return currentNode ?? self
	}
}
