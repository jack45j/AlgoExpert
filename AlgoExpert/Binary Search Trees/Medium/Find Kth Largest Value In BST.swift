//
//  Find Kth Largest Value In BST.swift
//  AlgoExpert
//
//  Created by Benson Lin on 2022/12/30.
//  Copyright © 2022 Benson Lin. All rights reserved.
//

import Foundation

extension BST {
    func findKthLargestValueInBst(_ tree: BST, _ k: Int) -> Int {
        var k = k
        var kLargestValue = -1
        func reverseTraverse(_ tree: BST?) {
            guard let tree = tree, k > 0 else { return }
            print(tree.value)
            reverseTraverse(tree.right)
            k -= 1
            if k == 0 {
                kLargestValue = tree.value
            }
            reverseTraverse(tree.left)
        }
        
        reverseTraverse(tree)
        return kLargestValue
    }
}
