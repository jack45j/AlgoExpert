//https://www.algoexpert.io/questions/palindrome-check
//  Palindrome Check.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/3/28.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension Strings {
    func isPalindrome(string: String) -> Bool {
        var leftP = 0
        var rightP = 0
        
        while leftP == rightP, leftP < string.count / 2 {
            if string[leftP] == string[(string.count - 1) - rightP] {
                leftP += 1
                rightP += 1
            } else {
                return false
            }
        }
        
        return true
    }
}

private extension String {
    public subscript(_ idx: Int) -> Character {
        self[self.index(self.startIndex, offsetBy: idx)]
    }
}
