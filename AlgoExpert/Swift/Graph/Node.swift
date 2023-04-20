//
//  Tree.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/4/20.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

class Node {
    let name: String
    var children: [Node]
    
    init(name: String) {
        self.name = name
        children = []
    }
    
    @discardableResult
    func addChild(name: String) -> Node {
        let childNode = Node(name: name)
        children.append(childNode)
        
        return self
    }
}

