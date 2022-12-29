//
//  Min Rewards.swift
//  AlgoExpert
//
//  Created by Benson Lin on 2021/4/11.
//

import Foundation

extension Arrays {
	func minRewards(_ scores: [Int]) -> Int {
        
        var rewards = Array(repeating: 1, count: scores.count)
		
        guard !scores.isEmpty else { return 0 }
        for idx in 0..<scores.count {
            
            guard idx - 1 >= 0 else { continue }
            
            if scores[idx] > scores[idx - 1] {
                rewards[idx] = max(rewards[idx - 1] + 1, rewards[idx])
            }
        }
        
        for idx in stride(from: scores.count - 1, to: -1, by: -1) {
            
            guard idx + 1 < scores.count else { continue }
            
            if scores[idx] > scores[idx + 1] {
                rewards[idx] = max(rewards[idx + 1] + 1, rewards[idx])
            }
        }
        
        return rewards.reduce(0, +)
	}
}
