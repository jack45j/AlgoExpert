//
//  Move Element To End.swift
//  Algoexpert
//
//  Created by Benson Lin on 2021/4/5.
//

import Foundation

extension Arrays {
	func moveElementToEnd(_ array: inout [Int], _ toMove: Int) -> [Int] {
		var leftP = 0, rightP = array.count - 1
		
		while leftP < rightP {
			if array[leftP] == toMove && array[rightP] != toMove {
				array.swapAt(leftP, rightP)
			}
			
			if array[leftP] != toMove {
				leftP += 1
			}
			
			if array[rightP] == toMove {
				rightP -= 1
			}
		}
		
		return array
	}
}
