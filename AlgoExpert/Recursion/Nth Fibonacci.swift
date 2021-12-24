//
//  Nth Fibonacci.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2021/12/24.
//

import Foundation
extension Recursion {
    func getNthFib(n: Int) -> Int {
    print(n)
    var lastTwo: [Int] = [0, 1]
    var current = 0
    var idx = 2
    if n <= 2 {
        return lastTwo[n-1]
    }
    while idx < n {
        current = lastTwo[0] + lastTwo[1]
        lastTwo[0] = lastTwo[1]
        lastTwo[1] = current
        idx += 1
    }
    return current
    }
}

