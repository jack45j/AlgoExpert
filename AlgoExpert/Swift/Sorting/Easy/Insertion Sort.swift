//https://www.algoexpert.io/questions/insertion-sort
//  Insertion Sort.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/4/20.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension Sorting {
    func insertionSort(array: inout [Int]) -> [Int] {
        guard !array.isEmpty else { return [] }
        for idx in 0..<array.count {
            var seperateIdx = idx
            while seperateIdx > 0 {
                if array[seperateIdx] < array[seperateIdx - 1] {
                    array.swapAt(seperateIdx, seperateIdx - 1)
                }
                seperateIdx -= 1
            }
        }
        
        return array
    }
}
