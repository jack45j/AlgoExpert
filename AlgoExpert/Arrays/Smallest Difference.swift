//
//  Smallest Difference.swift
//  Algoexpert
//
//  Created by Benson Lin on 2021/4/5.
//

import Foundation

extension Arrays {
	func smallestDifference(arrayOne: inout [Int], arrayTwo: inout [Int]) -> [Int] {
				
		var leftPointer = 0, rightPointer = 0
		var smallestCombination: [Int] = [arrayOne[leftPointer], arrayTwo[rightPointer]]
		var current: Int = .max
		
		arrayOne.sort()
		arrayTwo.sort()
		print("arrayOne: \(arrayOne) arrayTwo: \(arrayTwo)")
		
		while leftPointer < arrayOne.count && rightPointer < arrayTwo.count {
			print("leftP: \(leftPointer) rightP: \(rightPointer)")
			print("smallestCombination: \(smallestCombination)")
			print("leftNum: \(arrayOne[leftPointer]) rightNum: \(arrayTwo[rightPointer])")
			
			
			if arrayOne[leftPointer] == arrayTwo[rightPointer] {
				// The absolute answer
				return [arrayOne[leftPointer], arrayTwo[rightPointer]]
			} else if arrayOne[leftPointer] < arrayTwo[rightPointer] {
				// left number less than right number
				print("left Pointer increase")
				if arrayTwo[rightPointer] - arrayOne[leftPointer] < current {
					smallestCombination = [arrayOne[leftPointer], arrayTwo[rightPointer]]
					current = arrayTwo[rightPointer] - arrayOne[leftPointer]
				}
				leftPointer += 1
			} else {
				//left number greater than right number
				print("right Pointer increase")
				if arrayOne[leftPointer] - arrayTwo[rightPointer] < current {
					smallestCombination = [arrayOne[leftPointer], arrayTwo[rightPointer]]
					current = arrayOne[leftPointer] - arrayTwo[rightPointer]
				}
				rightPointer += 1
			}
		}
		
		
		
		return smallestCombination
	}
}
