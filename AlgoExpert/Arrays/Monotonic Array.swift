//
//  Monotonic Array.swift
//  Algoexpert
//
//  Created by Yi-Cheng Lin on 2021/4/5.
//

import Foundation

extension Arrays {
	func isMonotonic(array: [Int]) -> Bool {
		guard array.count > 1 else { return true }
		var increament = false
		var decreament = false
		
		for i in 0..<array.count - 1 {
			if array[i + 1] - array[i] > 0 {
				increament = true
			} else if array[i + 1] - array[i] < 0 {
				decreament = true
			}
			
			if increament && decreament { return false }
		}
		
		return (increament || decreament) || (!increament && !decreament)
	}
}
