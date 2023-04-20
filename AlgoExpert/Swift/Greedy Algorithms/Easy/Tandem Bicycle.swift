//https://www.algoexpert.io/questions/tandem-bicycle
//  Tandem Bicycle.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/4/20.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension GreedyAlgorithms {
    func tandemBicycle(_ redShirtSpeeds: inout [Int], _ blueShirtSpeeds: inout [Int], _ fastest: Bool) -> Int {
        // U can use 2 pointers traverse reversely instead of sort by different direction
        if fastest {
            redShirtSpeeds.sort(by: >)
        } else {
            redShirtSpeeds.sort(by: <)
        }
        blueShirtSpeeds.sort(by: <)
        
        var sum = 0
        for idx in 0..<redShirtSpeeds.count {
            sum += max(redShirtSpeeds[idx], blueShirtSpeeds[idx])
        }
        
        return sum
    }
}
