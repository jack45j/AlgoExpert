//https://www.algoexpert.io/questions/class-photos
//  Class Photos.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/4/20.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension GreedyAlgorithms {
    func classPhotos(_ redShirtHeights: inout [Int], _ blueShirtHeights: inout [Int]) -> Bool {
        redShirtHeights.sort(by: <)
        blueShirtHeights.sort(by: <)
        
        var isRedInFrontOfBlue = redShirtHeights[0] < blueShirtHeights[0]
        
        if isRedInFrontOfBlue {
            for idx in 0..<blueShirtHeights.count {
                if blueShirtHeights[idx] <= redShirtHeights[idx] {
                    return false
                }
            }
        } else {
            for idx in 0..<redShirtHeights.count {
                if redShirtHeights[idx] <= blueShirtHeights[idx] {
                    return false
                }
            }
        }
        
        return true
    }
}
