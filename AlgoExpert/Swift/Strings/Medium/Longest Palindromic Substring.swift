//https://www.algoexpert.io/questions/longest-palindromic-substring
//  Longest Palindromic Substring.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/4/10.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension Strings {
    func longestPalindromicSubstring(string: String) -> String {
        let strArray = Array(string)
        var longestResult = ""
        guard !strArray.isEmpty && strArray.count > 1 else { return string }
        
        func findPalindromic(left i: Int, right j: Int) {
            var i = i, j = j
            while i >= 0, j < string.count {
                if strArray[i] == strArray[j] {
                    if longestResult.count < strArray[i...j].count {
                        longestResult = String(strArray[i...j])
                    }
                    i -= 1
                    j += 1
                } else {
                    break
                }
            }
        }
        
        for idx in 0..<string.count {
            findPalindromic(left: idx, right: idx)
            findPalindromic(left: idx, right: idx + 1)
        }
        
        return longestResult
    }
}
