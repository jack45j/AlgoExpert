//
//  Best Seat.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/4/14.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension Arrays {
    func bestSeat(_ seats: [Int]) -> Int {
        var maximumSpaceIdx = -1
        var maximumSpace = 0
        var leftP = 0
        var rightP = 0
        
        while rightP < seats.count {
            if seats[rightP] == 1 {
                if leftP != rightP {
                    if maximumSpace < rightP - leftP - 1 {
                        maximumSpace = rightP - leftP - 1
                        maximumSpaceIdx = (rightP + leftP) / 2
                    }
                    leftP = rightP
                }
            }
            
            rightP += 1
        }
        
        return maximumSpaceIdx
    }
}
