//https://www.algoexpert.io/questions/depth-first-search
//  Depth-First Search.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/4/20.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension Node {
    @discardableResult
    func depthFirstSearch(array: inout [String]) -> [String] {
        
        array.append(self.name)
        self.children.forEach { node in
            node.depthFirstSearch(array: &array)
        }
        
        return array
    }
}
