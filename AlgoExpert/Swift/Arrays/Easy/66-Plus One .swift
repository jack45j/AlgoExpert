//https://leetcode.com/problems/plus-one
//  66-Plus One .swift
//  AlgoExpert
//
//  Created by Yi-Cheng Lin on 2023/3/12.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension Arrays {
    func plusOne(_ digits: [Int]) -> [Int] {
        var reverse = Array(digits.reversed())
        
        var pointer = 0
        var overflow = 1
        while overflow != 0 {
            if pointer >= reverse.count {
                reverse.append(overflow)
            } else {
                reverse[pointer] += overflow
            }
            overflow = 0
            
            if reverse[pointer] > 9 {
                reverse[pointer] = 0
                pointer += 1
                overflow = 1
            }
        }
        
        return reverse.reversed()
    }
}
