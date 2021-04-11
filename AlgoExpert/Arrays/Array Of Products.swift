//
//  Array Of Products.swift
//  Algoexpert
//
//  Created by Yi-Cheng Lin on 2021/4/5.
//

import Foundation

extension Program {
	static func arrayOfProducts(_ array: [Int]) -> [Int] {
		var result: [Int] = []
		for i in 0..<array.count {
			var multiNum = 1
			for leftIdx in 0..<i {
				multiNum *= array[leftIdx]
			}
			
			for rightIdx in i+1..<array.count {
				multiNum *= array[rightIdx]
			}
			
			result.append(multiNum)
		}
		
		return result
	}
}
