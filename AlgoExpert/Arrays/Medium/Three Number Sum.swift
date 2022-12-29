//
//  Three Number Sum.swift
//  Algoexpert
//
//  Created by Benson Lin on 2021/4/5.
//

import Foundation

extension Arrays {
	func threeNumberSum(array: inout [Int], targetSum: Int) -> [[Int]] {
		array.sort()
		print(array)
		var result: [[Int]] = []
		var L = 0, R = 0
		
		for idx in 0..<array.count - 2 {
			resetPointers(left: &L, right: &R, currentIdx: idx, arrayCount: array.count)
			print("\(array[idx]), \(array[L]), \(array[R])")
			while L != R {
				if sumThreeNum(array[idx], array[L], array[R]) == targetSum {
					// 等於TargetSum
					result.append([array[idx], array[L], array[R]])
					L += 1
				} else if sumThreeNum(array[idx], array[L], array[R]) < targetSum {
					// 小於TargetSum
					L += 1
				} else {
					// 大於TargetSum
					R -= 1
				}
			}
		}
		
		
		return result
	}
	
	private func resetPointers(left: inout Int, right: inout Int, currentIdx: Int, arrayCount: Int) {
		left = currentIdx + 1
		right = arrayCount - 1
	}
	
	private func sumThreeNum(_ num1: Int, _ num2: Int, _ num3: Int) -> Int {
		return num1 + num2 + num3
	}
}
