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

extension Optional where Wrapped == TreeNode & Dumpable {
    func dump() {
        return
    }
}

extension TreeNode: Dumpable {
    func dump() {
        func dumpNode(_ node: TreeNode?,
                      _ prefix: String,
                      _ isLast: Bool,
                      isLeft: Bool = false,
                      isleftBelow: Bool = false,
                      _ out: inout String) {
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
                out += isLeft ? "(L)" : "(R)"
            }
            out += "\n"
            
            if !isleftBelow {
                dumpNode(node.left, prefix + (isLast ? "  " : "│ "), node.right == nil, isLeft: true, isleftBelow: isleftBelow, &out)
                dumpNode(node.right, prefix + (isLast ? "  " : "│ "), true, isLeft: false, isleftBelow: isleftBelow, &out)
            } else {
                dumpNode(node.right, prefix + (isLast ? "  " : "│ "), node.left == nil, isLeft: false, isleftBelow: isleftBelow, &out)
                dumpNode(node.left, prefix + (isLast ? "  " : "│ "), true, isLeft: true, isleftBelow: isleftBelow, &out)
            }
        }
        
        var out = ""
        dumpNode(self, "", true, isleftBelow: false, &out)
        print(out)
    }
}
