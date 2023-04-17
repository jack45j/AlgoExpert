//
//  Search In Sorted Matrix.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/4/14.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension Searching {
    func searchInSortedMatrix(matrix: [[Int]], target: Int) -> [Int] {
        guard matrix.count > 1 else { return [0, 0] }
        var column = matrix[0].count - 1
        var row = 0
        
        while row >= 0, row < matrix[0].count, column >= 0 {
            if target > matrix[row][column] {
                row += 1
            } else if target < matrix[row][column] {
                column -= 1
            } else {
                return [row, column]
            }
        }
        
        return [-1, -1]
    }
}
