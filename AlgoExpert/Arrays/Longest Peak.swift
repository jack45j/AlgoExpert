//
//  Longest Peak.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2021/4/6.
//

import Foundation

extension Program {
    static func longestPeak(array: [Int]) -> Int {
        guard array.count >= 3 else { return 0 }
        var longest = 0
        var idx = 1
        var isPeak: Bool { return array[idx - 1] < array[idx] && array[idx] > array[idx + 1] }
        
        while idx < array.count - 1 {
            if !isPeak {
                idx += 1
                continue
            }
            
            var leftIdx = idx - 1
            while leftIdx > 0, array[leftIdx - 1] < array[leftIdx] {
                leftIdx -= 1
                continue
            }
            
            var rightIdx = idx + 1
            while rightIdx < array.count - 1, array[rightIdx + 1] < array[rightIdx] {
                rightIdx += 1
                continue
            }
            
            if (rightIdx - leftIdx + 1) > longest {
                longest = (rightIdx - leftIdx + 1)
            }
            idx = rightIdx
        }
        
        return longest
    }
}

