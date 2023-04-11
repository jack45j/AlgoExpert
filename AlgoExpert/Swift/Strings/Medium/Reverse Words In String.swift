//https://www.algoexpert.io/questions/reverse-words-in-string
//  Reverse Words In String.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/4/11.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension Strings {
    func reverseWordsInString(_ string: String) -> String {
        var result = ""
        let strArray = Array(string)
        for i in 0..<string.count {
            if strArray[i] == " " {
                result = " " + String(strArray[result.count..<i]) + result
                continue
            } else if i == string.count - 1 {
                result = String(strArray[result.count...i]) + result
            } else {
                continue
            }
        }
        
        return result
    }
}
