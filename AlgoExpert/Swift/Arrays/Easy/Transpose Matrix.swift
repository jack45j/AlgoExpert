//
//  Transpose Matrix.swift
//  AlgoExpert
//
//  Created by 20001255-林翌埕 on 2023/6/14.
//  Copyright © 2023 Benson Lin. All rights reserved.
//https://www.algoexpert.io/questions/transpose-matrix

import Foundation

extension Arrays {
    func transposeMatrix(_ matrix: [[Int]]) -> [[Int]] {
        var flippedMatrix: [[Int]] = []
        var column = 0
        var row = 0
        
        guard matrix.count > 0 else { return matrix }
        while row < matrix[column].count {
            flippedMatrix.append([])
            while column < matrix.count {
                flippedMatrix[row].append(matrix[column][row])
                column += 1
            }
            row += 1
            column = 0
        }
        
        return flippedMatrix
    }
}
