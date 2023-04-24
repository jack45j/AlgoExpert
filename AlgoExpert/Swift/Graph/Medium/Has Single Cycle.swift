//
//  Has Single Cycle.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/4/24.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension Graph {
    func hasSingleCycle(array: [Int]) -> Bool {
        guard !array.isEmpty else { return false }
        var visitedArray = Array(repeating: false, count: array.count)
        var stepper = 1
        var idxToVisit = 0
        while stepper <= array.count {
            guard array[idxToVisit] != 0 else { return false }
            if visitedArray[idxToVisit] == true {
                return false
            }
            
            visitedArray[idxToVisit] = true
            
            stepper += 1
            let next = (idxToVisit + array[idxToVisit]) % array.count
            if next < 0 {
                idxToVisit = array.count + next
            } else {
                idxToVisit = next
            }
        }
        
        return idxToVisit == 0
    }
}
