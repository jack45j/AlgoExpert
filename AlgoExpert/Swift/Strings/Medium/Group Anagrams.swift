//https://www.algoexpert.io/questions/group-anagrams
//  Group Anagrams.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/4/12.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension Strings {
    func groupAnagrams(_ words: [String]) -> [[String]] {
        var hash: [String: [String]] = [:]
        for word in words {
            let sortedWord = String(word.sorted())
            hash[sortedWord, default: []].append(word)
        }
        
        return Array(hash.values)
    }
}
