//
//  First Duplicate Value.swift
//  AlgoExpert
//
//  Created by Benson Lin on 2021/4/6.
//

import Foundation

extension Arrays {
    func firstDuplicateValue(_ array: inout [Int]) -> Int {
        var hash: [Int: Int] = [:]
        
        for (idx, val) in array.enumerated() {
            if let _ = hash[val] {
                return val
            } else {
                hash[val] = idx
            }
        }
        
        return -1
    }
    
    func firstDuplicateValueWithoutExtraSpace(_ array: inout [Int]) -> Int {
        for val in array {
            let idx = abs(val) - 1
            if array[idx] < 0 {
                return val
            } else {
                array[idx] *= -1
            }
        }
        
        return -1
    }
}

