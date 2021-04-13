//
//  Merge Overlapping Intervals.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2021/4/7.
//

import Foundation

extension Arrays {
    func mergeOverlappingIntervals(_ intervals: [[Int]]) -> [[Int]] {
        var result: [[Int]] = []
        var currentIdx = 0
        let sortedIntervals = intervals.sorted(by: { $0[0] < $1[0] })
        
        for idx in 0 ..< sortedIntervals.count {
            if result.isEmpty {
                result.append(sortedIntervals[idx])
                continue
            }
            
            if sortedIntervals[idx][0] <= result[currentIdx][1] {
                // right bound overlapping
                result[currentIdx][1] = max(sortedIntervals[idx][1], result[currentIdx][1])
            } else {
                result.append(sortedIntervals[idx])
                currentIdx += 1
            }
            
            if idx == sortedIntervals.count - 1 && result[currentIdx].count == 1 {
                result[currentIdx][1] = sortedIntervals[idx][1]
            }
        }
        
        
        return result
    }
}

