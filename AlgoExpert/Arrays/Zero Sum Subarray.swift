//
//  Zero Sum Subarray.swift
//  AlgoExpert
//
//  Created by Benson Lin on 2022/12/29.
//

import Foundation

extension Array {
    func zeroSumSubarray(_ nums: [Int]) -> Bool {
        // key: Sum, value: Index
        var subArraySum: [Int: Int] = [:]
        
        guard !nums.isEmpty else { return false }
        var sum = 0
        for index in 0..<nums.count {
            sum = sum + nums[index]
            if let prevIndex = subArraySum[sum] {
                return true
            } else {
                subArraySum[sum] = index
            }
        }
        
        return sum == 0
    }
}
