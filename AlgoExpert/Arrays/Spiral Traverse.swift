//
//  Spiral Traverse.swift
//  Algoexpert
//
//  Created by Yi-Cheng Lin on 2021/4/5.
//

import Foundation

extension Arrays {
	func spiralTraverse(array: [[Int]]) -> [Int] {
		var startColumn = 0
		var endColumn = array[startColumn].count - 1
		var startRow = 0
		var endRow = array.count - 1
		var result: [Int] = []
		while endColumn >= startColumn && endRow >= startRow {
			for xIncIdx in startColumn..<endColumn + 1 {
				result.append(array[startRow][xIncIdx])
			}
			for yIncIdx in startRow+1..<endRow + 1 {
				result.append(array[yIncIdx][endColumn])
			}
			var xDecIdx = endColumn - 1
			while xDecIdx >= startColumn && endRow > startRow {
				result.append(array[endRow][xDecIdx])
				xDecIdx -= 1
			}
			
			var yDecIdx = endRow - 1
			while yDecIdx > startRow && endColumn > startColumn {
				result.append(array[yDecIdx][startColumn])
				yDecIdx -= 1
			}
			
			startColumn += 1
			endColumn -= 1
			startRow += 1
			endRow -= 1
		}
		
		return result
	}
}
