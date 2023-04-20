//https://www.algoexpert.io/questions/selection-sort
//  Selection Sort.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/4/20.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension Sorting {
    func selectionSort(array: inout [Int]) -> [Int] {
        guard !array.isEmpty else { return [] }
        for idx in 0..<array.count {
            var pointer = idx
            var minElementIdx = idx
            while pointer < array.count {
                if array[pointer] < array[minElementIdx] {
                    minElementIdx = pointer
                }
                
                pointer += 1
            }
            array.swapAt(minElementIdx, idx)
        }
        
        return array
    }
}
