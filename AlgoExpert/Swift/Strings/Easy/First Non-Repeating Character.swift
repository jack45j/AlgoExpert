//
//  First Non-Repeating Character.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/4/7.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension Strings {
    func firstNonRepeatingCharacter(_ string: String) -> Int {
        var hash: [Character: Int] = [:]
        string.forEach { hash[$0, default: 0] += 1 }
        for (idx, char) in string.enumerated() {
            if hash[char] == 1 {
                return idx
            }
        }
        return -1
    }
}
