//https://www.algoexpert.io/questions/valid-starting-city
//  Valid Starting City.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/4/25.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension GreedyAlgorithms {
    // Brute force
    func validStartingCity_bruteForce(_ distances: [Int], _ fuel: [Int], _ mpg: Int) -> Int {
        var startIdx = 0
        while startIdx < distances.count {
            if checkValid(startIdx: startIdx, current: startIdx, distances, fuel, mpg, isStart: true) {
                return startIdx
            }
            startIdx += 1
        }
        
        return -1
    }
    
    private func checkValid(startIdx: Int, current: Int, _ distances: [Int], _ fuel: [Int], _ mpg: Int, remainingFuel: Int = 0, isStart: Bool = false) -> Bool {
        if startIdx == current, !isStart {
            return true
        }
        
        let remainingFuel = remainingFuel + fuel[current] * mpg - distances[current]
        if remainingFuel >= 0 {
            let next = current + 1 >= distances.count ? 0 : current + 1
            return checkValid(startIdx: startIdx, current: next, distances, fuel, mpg, remainingFuel: remainingFuel)
        } else {
            return false
        }
    }
}
