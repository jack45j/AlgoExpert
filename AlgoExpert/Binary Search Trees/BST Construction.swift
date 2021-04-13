//
//  BST Construction.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2021/4/13.
//

import Foundation

extension BST {
    @discardableResult
    func insert(value: Int) -> BST {
        if value < self.value {
            if let left = left {
                left.insert(value: value)
            } else {
                left = .init(value: value)
            }
        } else {
            if let right = right {
                right.insert(value: value)
            } else {
                right = .init(value: value)
            }
        }
        
        return self
    }
    
    @discardableResult
    func contains(value: Int) -> Bool {
        guard value != self.value else { return true }
        if value < self.value, let left = left {
            left.contains(value: value)
        } else if value > self.value, let right = right {
            right.contains(value: value)
        }
        
        return false
    }
    
    func remove(value: Int?, parentNode: BST?) -> BST {
        var parentNode = parentNode
        
        return self
    }
}
