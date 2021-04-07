//
//  Four Number Sum.swift
//  AlgoExpert
//
//  Created by Yi-Cheng Lin on 2021/4/8.
//

import Foundation

extension Program {
	static func fourNumberSum(array: [Int], targetSum: Int) -> [[Int]] {
		
		var hash: [Int: [[Int]]] = [:]
		var result = [[Int]]()
		for idx in 1 ..< array.count - 1 {
			for idxR in idx + 1 ..< array.count {
				if let hashKey = hash[targetSum - (array[idx] + array[idxR])] {
					for pairs in hashKey {
						result.append(pairs + [array[idx]] + [array[idxR]])
					}
				}
			}
			
			for idxL in 0 ..< idx {
				if var hashKey = hash[array[idxL] + array[idx]] {
					hashKey.append([array[idxL], array[idx]])
				} else {
					hash[array[idxL] + array[idx]] = [[array[idxL], array[idx]]]
				}
			}
		}
		
		return result
	}
}
