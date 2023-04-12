//https://www.algoexpert.io/questions/minimum-characters-for-words
//  Minimum Characters For Words.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/4/12.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension Strings {
    func minimumCharactersForWords(_ words: [String]) -> [String] {
        var hash: [Character: Int] = [:]
        
        for word in words {
            var counter = hash
            for char in word {
                if counter[char, default: 0] - 1 < 0 {
                    hash[char, default: 0] += 1
                } else {
                    counter[char, default: 0] -= 1
                }
            }
        }
        print(hash)
        var result: [String] = []
        hash.forEach { (char, count) in
            for _ in 0..<count {
                result.append(String(char))
            }
        }
        
        return result
    }
}
