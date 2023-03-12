//https://leetcode.com/problems/hamming-distance
//  461-Hamming Distance .swift
//  AlgoExpert
//
//  Created by Yi-Cheng Lin on 2023/3/12.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension Bitwise {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        var xorValue = x ^ y
        var count = 0
        while xorValue > 0 {
            count += 1 & xorValue
            xorValue >>= 1
        }
        return count
    }
}
