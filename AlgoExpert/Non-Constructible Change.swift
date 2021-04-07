//
//  NonConstructible Change.swift
//  Algoexpert
//
//  Created by Yi-Cheng Lin on 2021/4/5.
//

import Foundation
extension Program {
	static func nonConstructibleChange(_ coins: inout [Int]) -> Int {
		var change = 0
		for i in coins.sorted() {
			if change + 1 >= i {
				change += i
			} else {
				return change + 1
			}
		}
		return change + 1
	}
}
