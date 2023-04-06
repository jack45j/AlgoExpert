//https://www.algoexpert.io/questions/run-length-encoding
//  Run-Length Encoding.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/4/6.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension Strings {
    func runLengthEncoding(_ string: String) -> String {
        var result = ""
        var idx = 0
        var counter = 0
        while idx <= string.count {
            guard idx > 0 else {
                counter += 1
                idx += 1
                continue
            }
            
            guard idx != string.count else {
                result += "\(counter)\(string[idx - 1])"
                break
            }
            
            if string[idx] != string[idx - 1] {
                result += "\(counter)\(string[idx - 1])"
                counter = 0
            } else {
                if counter == 9 {
                    result += "\(counter)\(string[idx])"
                    counter = 0
                }
            }
            idx += 1
            counter += 1
        }
        
        
        
        return result
    }
}
