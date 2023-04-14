//
//  Middle Node.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/4/14.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension LinkedLists {
    func middleNode(_ linkedList: LinkedList) -> LinkedList? {
        var slowPointer: LinkedList? = linkedList
        var fastPointer: LinkedList? = linkedList
        while fastPointer != nil && fastPointer?.next != nil {
            slowPointer = slowPointer?.next
            fastPointer = fastPointer?.next?.next
        }
        return slowPointer
    }
}
