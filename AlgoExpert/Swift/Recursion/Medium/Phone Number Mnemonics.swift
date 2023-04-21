//https://www.algoexpert.io/questions/phone-number-mnemonics
//  Phone Number Mnemonics.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/4/21.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension Recursion {
    func phoneNumberMnemonics(_ phoneNumber: String) -> [String] {
        
        var currentMnemonic = Array(repeating: Character("0"), count: phoneNumber.count)
        var result = [String]()
        var phoneNumberArr = Array(phoneNumber)
        
        helper(index: 0, phoneNumber: phoneNumberArr, current: &currentMnemonic, result: &result)
        
        return result
    }
    
    private func helper(index: Int, phoneNumber: [Character], current: inout [Character], result: inout [String]) {
        
        if index == phoneNumber.count {
            result.append(String(current))
        } else {
            let digit = phoneNumber[index]
            let letters = digitLetters[digit]!
            for letter in letters {
                current[index] = letter
                helper(index: index + 1, phoneNumber: phoneNumber, current: &current, result: &result)
            }
        }
        
    }
    
    private var digitLetters: [Character: [Character]] {
        return [
            "1": ["1"],
            "2": ["a", "b", "c"],
            "3": ["d", "e", "f"],
            "4": ["g", "h", "i"],
            "5": ["j", "k", "l"],
            "6": ["m", "n", "o"],
            "7": ["p", "q", "r", "s"],
            "8": ["t", "u", "v"],
            "9": ["w", "x", "y", "z"],
            "0": ["0"],
        ]
    }
}
