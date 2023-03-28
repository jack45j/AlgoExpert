//
//  Strings.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/3/28.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

class Strings {}

extension String {
    subscript(_ idx: Int) -> Character {
        self[self.index(self.startIndex, offsetBy: idx)]
    }
}
