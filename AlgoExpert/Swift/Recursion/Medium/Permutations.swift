//https://www.algoexpert.io/questions/permutations
//  Permutations.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/4/13.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension Recursion {
    func permutations(array: inout [Int]) -> [[Int]] {
        var permutation: [[Int]] = []
        helper(array: &array, firstIndex: 0, permutation: &permutation)
        return permutation
    }
    
    private func helper(array: inout [Int], firstIndex: Int, permutation: inout [[Int]]) {
        if firstIndex == array.count - 1 {
            permutation.append(array)
            return
        } else {
            for secondIndex in firstIndex..<array.count {
                var newArr = array.swap(firstIndex, secondIndex)
                helper(array: &newArr, firstIndex: firstIndex + 1, permutation: &permutation)
            }
        }
    }
}

private extension Array where Element == Int {
    func swap(_ i: Int, _ j: Int) -> Self {
        var newArr = self
        let temp = newArr[j]
        newArr[j] = newArr[i]
        newArr[i] = temp
        return newArr
    }
}
