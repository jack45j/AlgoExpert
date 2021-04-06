//
//  Longest Peak.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2021/4/6.
//

import Foundation

extension Program {
    static func longestPeak(array: [Int]) -> Int {
        func isPeak(_ idx: Int) -> Bool {
            guard idx > 0 && idx < array.count - 1 else { return false }
            return array[idx - 1] < array[idx] && array[idx + 1] < array[idx]
        }
        
        var longest = 0
        
        for currentIdx in 1 ..< array.count - 1 {
            if isPeak(currentIdx) {
                var leftPointer = currentIdx - 1
                var rightPointer = currentIdx + 1
                while array[leftPointer] > array[leftPointer - 1] {
                    leftPointer -= 1
                }
                
                while array[rightPointer] > array[rightPointer + 1] {
                    rightPointer += 1
                }
                
                if rightPointer - leftPointer > longest {
                    longest = rightPointer - leftPointer
                }
            }
        }
        
        return longest + 1
    }
}

