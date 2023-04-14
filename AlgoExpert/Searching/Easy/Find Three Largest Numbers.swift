//
//  Find Three Largest Numbers.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/4/14.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation
extension Searching {
    func findThreeLargestNumbers(array: [Int]) -> [Int] {
        guard array.count > 3 else { return array.sorted() }
        var result: [Int] = Array(array[0..<3]).sorted()
        for idx in 3..<array.count {
            guard array[idx] >= result[0] else { continue }
            if array[idx] < result[1] {
                result[0] = array[idx]
            } else if array[idx] < result[2] {
                result[0] = result[1]
                result[1] = array[idx]
            } else {
                result[0] = result[1]
                result[1] = result[2]
                result[2] = array[idx]
            }
        }
        
        return result
    }
}
