//https://www.algoexpert.io/questions/bubble-sort
//  Bubble Sort.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/4/20.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension Sorting {
    @discardableResult
    func bubbleSort(array: inout [Int]) -> [Int] {
        guard !array.isEmpty else { return [] }
        var count = array.count
        while count > 0 {
            for idx in 0..<count - 1 {
                if array[idx] > array[idx + 1] {
                    array.swapAt(idx, idx + 1)
                }
            }
            count -= 1
        }
        return array
    }
}
