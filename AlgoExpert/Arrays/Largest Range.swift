//
//  Largest Range.swift
//  AlgoExpert
//
//  Created by Yi-Cheng Lin on 2021/4/11.
//

import Foundation

extension Program {
	static func largestRange(array: [Int]) -> [Int] {
		var bestResult = [0, 0]
		var hash: [Int: Bool] = [:]
		for val in array {
			hash[val] = true
		}
		
		for val in array {
			if let isUnused = hash[val], !isUnused {
				continue
			}
			hash[val] = false
			
//			var currentMaxLength = bestResult[1] - bestResult[0]
			var left = val - 1
			var right = val + 1
			
			
			while hash[left] != nil {
				if let hashVal = hash[left], hashVal {
					hash[left] = false
					left -= 1
				}
			}
			left += 1
			
			while hash[right] != nil {
				if let hashVal = hash[right], hashVal {
					hash[right] = false
					right += 1
				}
			}
			right -= 1
			
			if right - left + 1 > bestResult[1] - bestResult[0] {
				bestResult = [left, right]
//				currentMaxLength = right - left + 1
			}
		}
		
		return bestResult
	}
}
