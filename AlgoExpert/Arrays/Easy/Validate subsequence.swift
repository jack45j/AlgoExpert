//
//  Validate subsequence.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2022/12/29.
//  Copyright © 2022 Benson Lin. All rights reserved.
//

import Foundation

extension Arrays {
    static func isValidSubsequence(_ array: [Int], _ sequence: [Int]) -> Bool {
        var arrIndex = 0
        var seqIndex = 0
        while arrIndex < array.count && seqIndex < sequence.count {
            if sequence[seqIndex] == array[arrIndex] {
                // Same value
                seqIndex += 1
            }
            arrIndex += 1
        }
        if seqIndex >= sequence.count {
            return true
        }
        
        return false
    }
}
