//
//  Semordnilap.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/4/7.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension Strings {
    func semordnilap(_ words: [String]) -> [[String]] {
        var wordSet = Set(words)
        var result: [[String]] = []
        for word in words {
            let reversed = String(word.reversed())
            if wordSet.contains(reversed) && reversed != word {
                result.append([word, reversed])
                wordSet.remove(word)
                wordSet.remove(reversed)
            }
        }
        
        return result
    }
}
