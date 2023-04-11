//https://www.algoexpert.io/questions/valid-ip-addresses
//  Valid IP Address.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/4/11.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension Strings {
    func validIPAddresses(_ string: String) -> [String] {
        let strArray = Array(string)
        var validIPs: [String] = []
        
        for i in 1 ..< min(strArray.count, 4) {
            var validParts: [[Character]] = [[], [], [], []]
            validParts[0] = Array(strArray[..<i])
            guard isValidPart(validParts[0]) else { continue }
            
            for j in i ..< i + min(strArray.count - i, 4) {
                validParts[1] = Array(strArray[i..<j])
                guard isValidPart(validParts[1]) else { continue }
                
                for k in j ..< j + min(strArray.count - j, 4) {
                    validParts[2] = Array(strArray[j..<k])
                    validParts[3] = Array(strArray[k...])
                    
                    guard
                        isValidPart(validParts[2]),
                        isValidPart(validParts[3])
                    else { continue }
                    var validIp = "\(String(validParts[0])).\(String(validParts[1])).\(String(validParts[2])).\(String(validParts[3]))"
                    validIPs.append(validIp)
                }
            }
        }
        
        return validIPs
    }
    
    private func isValidPart(_ part: [Character]) -> Bool {
        guard let ip = Int(String(part)) else { return false }
        if ip >= 256 {
            return false
        }
        
        return String(ip).count == part.count
    }
}
