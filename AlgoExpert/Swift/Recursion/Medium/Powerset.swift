//https://www.algoexpert.io/questions/powerset
//  Powerset.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/4/21.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension Recursion {
    func powerset(array: [Int], index: Int? = nil) -> [[Int]] {
        let idx = index ?? array.count - 1
        
        if idx < 0 {
            return [[]]
        }
        
        var subsets = powerset(array: array, index: idx - 1)
        for subset in subsets {
            var subset = subset
            subset.append(array[idx])
            subsets.append(subset)
        }
        
        return subsets
    }
}
