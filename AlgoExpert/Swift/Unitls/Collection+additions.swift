//
//  Collection+additions.swift
//  AlgoExpert
//
//  Created by Yi-Cheng Lin on 2023/3/12.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension Collection {
    /// Returns the element at the specified index if it is within bounds, otherwise nil.
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
