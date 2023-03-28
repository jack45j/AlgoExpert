//https://www.algoexpert.io/questions/caesar-cipher-encryptor
//  Caesar Cipher Encryptor.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/3/28.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension Strings {
    func caesarCipherEncryptor(string: String, key: UInt32) -> String {
        let aASCII = UInt8(ascii: "a")
        let zASCII = UInt8(ascii: "z")
        return String(bytes: string.unicodeScalars
            .map { UInt8(ascii: $0) }
            .map { ascii -> UInt8 in
                let offset = UInt8(key % 26)
                if ascii + offset > zASCII {
                    return ascii + offset - zASCII + aASCII - 1
                } else {
                    return ascii + offset
                }
            }, encoding: .ascii) ?? ""
    }
}
