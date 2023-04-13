//
//  Product Sum.swift
//  AlgoExpert
//
//  Created by Benson Lin on 2021/12/24.
//

import Foundation
extension Recursion {
    // Tip: You can cast each element with `as? [Any]` to check whether it is
    // an array or an integer.
    func productSum(_ array: [Any], depth: Int = 1) -> Int {
        var result = 0
        for item in array {
            if let item = item as? [Any] {
                result += productSum(item, depth: depth + 1)
            } else {
                guard let num = item as? Int else { fatalError() }
                result += num
            }
        }
        return result * depth
    }
}
