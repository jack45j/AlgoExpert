//https://leetcode.com/problems/island-perimeter/
//  463-Island Perimeter .swift
//  AlgoExpert
//
//  Created by Yi-Cheng Lin on 2023/3/12.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension Matrix {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        let directions = [(-1, 0), (0, 1), (1, 0), (0, -1)]
        let start = findStart(grid)
        var visited: [[Int]] = []
        var queue: Set<[Int]> = [start]
        var edges = 0
        while !queue.isEmpty {
            let current = queue.removeFirst()
            visited.append(current)
            directions.forEach { (x, y) in
                let (visitX, visitY) = (current[0] + x, current[1] + y)
                let toVisit = grid[safe: visitX]?[safe: visitY]
                
                if toVisit == 1, !visited.contains([visitX, visitY]) {
                    queue.insert([visitX, visitY])
                } else if toVisit != 1 {
                    edges += 1
                }
            }
        }
        
        return edges
    }
    
    private func findStart(_ grid: [[Int]]) -> [Int] {
        for x in 0 ..< grid.count {
            for y in 0 ..< grid[0].count {
                if grid[x][y] == 1 {
                    return [x, y]
                }
            }
        }
        fatalError()
    }
}
