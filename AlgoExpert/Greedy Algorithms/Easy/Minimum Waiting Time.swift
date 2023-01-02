//
//  Minimum Waiting Time.swift
//  AlgoExpert
//
//  Created by Benson Lin on 2021/4/13.
//

import Foundation

extension GreedyAlgorithms {
    func minimumWaitingTime(_ queries: inout [Int]) -> Int {
        var sum = 0
        for (idx, value) in queries.sorted().enumerated() {
            sum += value * ((queries.count - 1) - idx)
        }
        return sum
    }
}

