// https://leetcode.com/problems/prison-cells-after-n-days/
//  Prison Cells After N Days .swift
//  AlgoExpert
//
//  Created by Yi-Cheng Lin on 2023/3/12.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension Arrays {
    func prisonAfterNDaysViolent(_ cells: [Int], _ n: Int) -> [Int] {
        var result = cells
        for day in 0..<n {
            print(result)
            result = result.enumerated().map { (index, cell) in
                guard index != 0 && index != result.count - 1 else { return 0 }
                return result[index - 1] == result[index + 1] ? 1 : 0
            }
            if day == 15 {
                break
            }
            
        }
        
        return result
    }
    
    func prisonAfterNDays(_ cells: [Int], _ n: Int) -> [Int] {
        var hash: [[Int]: Int] = [:]
        var result = cells
        for day in 0..<n {
            result = nextDay(result)
            
            if let seen = hash[result] {
                let cycle = n % hash.count == 0 ? hash.count : n % hash.count
                return prisonAfterNDays(cells, cycle)
            } else {
                hash[result] = day
            }
        }
        
        return result
    }
    
    private func nextDay(_ cells: [Int]) -> [Int] {
        return cells.enumerated().map { (index, cell) in
            
            guard index != 0 && index != cells.count - 1 else { return 0 }
            return cells[index - 1] == cells[index + 1] ? 1 : 0
        }
    }
}
