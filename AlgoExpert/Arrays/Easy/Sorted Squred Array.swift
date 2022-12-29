//
//  Sorted Squred Array.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2022/12/29.
//  Copyright © 2022 Benson Lin. All rights reserved.
//

import Foundation

extension Arrays {
    func sortedSquaredArray(_ array: [Int]) -> [Int] {
        var squaredArray: [Int] = []
        for val in array {
            squaredArray.append(val * val)
        }
        return squaredArray.sorted()
    }
}
