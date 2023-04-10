//https://www.algoexpert.io/questions/common-characters
//  Common Characters.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/4/10.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension Strings {
    private func findSmallest(in strings: [String]) -> String {
        guard !strings.isEmpty else { return "" }
        var smallest = strings[0]
        for string in strings {
            if smallest >= string {
                smallest = string
            }
        }
        return smallest
    }
    
    func commonCharacters(_ strings: [String]) -> [String] {
        guard !strings.isEmpty else { return [] }
        
        var smallest = Set(findSmallest(in: strings))
        for char in smallest {
            for string in strings {
                if !string.contains(Character(extendedGraphemeClusterLiteral: char)) {
                    smallest.remove(char)
                }
            }
        }
        
        var result: [String] = []
        for char in smallest {
            result.append(String(char))
        }
        return result
    }
}
