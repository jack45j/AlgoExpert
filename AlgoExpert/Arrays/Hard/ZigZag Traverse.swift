//
//  ZigZag Traverse.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2022/12/29.
//  Copyright © 2022 Benson Lin. All rights reserved.
//

import Foundation

extension Arrays {
    func zigZagTraverse(array: [[Int]]) -> [Int] {
        
        var isDown: Bool = true
        var result = [Int]()
        var column = 0
        var row = 0
        
        while column < array.count && row < array[column].count {
            print("column: \(column) row: \(row)")
            result.append(array[column][row])
            
            if isDown {
                if row - 1 < 0 || column + 1 >= array.count {
                    if column + 1 >= array.count {
                        // at the left-bottom corner
                        row += 1
                    } else {
                        column += 1
                    }
                    isDown = false
                } else {
                    column += 1
                    row -= 1
                }
            } else {
                if row + 1 >= array[column].count || column - 1 < 0 {
                    if row + 1 >= array[column].count {
                        column += 1
                    } else {
                        row += 1
                    }
                    isDown = true
                } else {
                    column -= 1
                    row += 1
                }
            }
        }
        return result
    }
}
