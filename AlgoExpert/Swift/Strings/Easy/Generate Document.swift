//
//  Generate Document.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/4/6.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension Strings {
    func generateDocument(_ characters: String, _ document: String) -> Bool {
        var hash: [Character: Int] = [:]
        for char in characters {
            hash[char, default: 1] += 1
        }
        
        for char in document {
            if hash[char, default: 0] == 0 {
                return false
            }
            
            hash[char]! -= 1
        }
        
        return true
    }
}
