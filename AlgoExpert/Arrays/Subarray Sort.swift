//
//  Subarray Sort.swift
//  AlgoExpert
//
//  Created by Yi-Cheng Lin on 2021/4/11.
//

import Foundation

extension Program {
	
	static func subarraySort(array: [Int]) -> [Int] {
		
		guard array.count > 1 else { return [-1, -1] }
		
		var smallestAndLargest: [Int] =	[.max, -(Int.max)]
		func isNotSorted(_ idx: Int) -> Bool {
			if idx == 0 {
				return array[idx] > array[idx + 1]
			} else if idx == array.count - 1 {
				return array[idx] < array[idx - 1]
			} else {
				return array[idx] < array[idx - 1] || array[idx] > array[idx + 1]
			}
		}
		
		
		for idx in 0 ..< array.count {
			
			if isNotSorted(idx) {
				smallestAndLargest[0] = min(smallestAndLargest[0], array[idx])
				smallestAndLargest[1] = max(smallestAndLargest[1], array[idx])
			}
		}
		
		if smallestAndLargest[0] == .max {
			return [-1, -1]
		}
			
		var leftResult = 0
		while array[leftResult] <= smallestAndLargest[0] {
			leftResult += 1
		}
		
		var rightResult = array.count - 1
		while array[rightResult] >= smallestAndLargest[1] {
			rightResult -= 1
		}
		
		return [leftResult, rightResult]
	}
}
