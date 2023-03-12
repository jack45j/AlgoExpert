//
//  TreeNode.swift
//  AlgoExpert
//
//  Created by Benson Lin on 2021/4/13.
//

import Foundation
class TreeNode {
    var value: Int
    var left: TreeNode?
    var right: TreeNode?
    
    init(value: Int) {
        self.value = value
    }
    
    init(_ value: Int, _  left: TreeNode?, _ right: TreeNode?) {
        self.value = value
        self.left = left
        self.right = right
    }
}

extension TreeNode {
    func dump() {
        func dumpNode(_ node: TreeNode?, _ prefix: String, _ isLast: Bool, _ out: inout String) {
            guard let node = node else { return }
            out += prefix
            if prefix.isEmpty {
                out += "─>"
            } else {
                out += isLast ? "└─" : "├─"
            }
            out += "\(node.value)"
            if prefix.isEmpty {
                out += "(Root)"
            } else {
                out += isLast ? "(L)" : "(R)"
            }
            out += "\n"
            
            dumpNode(node.right, prefix + (isLast ? "  " : "│ "), node.left == nil, &out)
            dumpNode(node.left, prefix + (isLast ? "  " : "│ "), true, &out)
        }
        
        var out = ""
        dumpNode(self, "", true, &out)
        print(out)
    }
}
