//https://www.algoexpert.io/questions/task-assignment
//  Task Assignment.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/4/24.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension GreedyAlgorithms {
    // O(nlog(n)) time | O(n) space
    func taskAssignment(_ k: Int, _ tasks: [Int]) -> [[Int]] {
        
        var indice: [Int: [Int]] = [:]
        for index in 0..<tasks.count {
            indice[tasks[index], default: []].append(index)
        }
        
        var result = [[Int]]()
        var tasks = tasks.sorted()
        for idx in 0..<k {
            if let leftP = indice[tasks[idx]]?.popLast(), let rightP = indice[tasks[tasks.count - 1 - idx]]?.popLast() {
                result.append([leftP, rightP])
            }
        }
        
        return result
    }
}
