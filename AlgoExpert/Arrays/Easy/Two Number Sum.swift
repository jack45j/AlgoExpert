//
//  Two Number Sum.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2022/12/29.
//  Copyright © 2022 Benson Lin. All rights reserved.
//

import Foundation

extension Arrays {
    func twoNumberSum(_ array: inout [Int], _ targetSum: Int) -> [Int] {
        var hash = [Int: Bool]()
        for i in array {
            if let _ = hash[targetSum - i] {
                return [targetSum - i, i]
            } else {
                hash[i] = true
            }
        }
        return []
    }
}
