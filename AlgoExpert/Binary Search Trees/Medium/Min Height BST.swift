//
//  Min Height BST.swift
//  AlgoExpert
//
//  Created by Benson Lin on 2022/12/29.
//  Copyright © 2022 Benson Lin. All rights reserved.
//

import Foundation

extension BinarySearchTree {
    func minHeightBST(_ array: [Int]) -> BST? {
        
        guard !array.isEmpty else { return nil }
        let midIndex = (array.count - 1) / 2
        
        if midIndex >= 0 {
            let bst = BST(value: array[midIndex])
            bst.left = minHeightBST(Array(array[0..<midIndex]))
            bst.right = minHeightBST(Array(array[midIndex+1..<array.count]))
            return bst
        }
        
        return nil
    }
}
