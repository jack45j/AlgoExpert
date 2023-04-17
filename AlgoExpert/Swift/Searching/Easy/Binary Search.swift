//
//  Binary Search.swift
//  AlgoExpert
//
//  Created by 林翌埕-20001107 on 2023/4/14.
//  Copyright © 2023 Benson Lin. All rights reserved.
//

import Foundation

extension Searching {
    // O(Log(n)) time | O(Log(n)) space
    func binarySearch(array: [Int], target: Int) -> Int {
        guard array.count > 1 else {
            if array.isEmpty {
                return -1
            } else {
                if array[0] == target {
                    return 0
                } else {
                    return -1
                }
            }
        }
        let pointer = array.count / 2
        if target < array[pointer] {
            let newArray = array[0..<pointer]
            return binarySearch(array: Array(newArray), target: target)
        } else if target > array[pointer] {
            let newArray = array[pointer...]
            let index = binarySearch(array: Array(newArray), target: target)
            if index == -1 { return -1 }
            return pointer + index
        } else if target == array[pointer] {
            return pointer
        }
        return -1
    }
}

extension Searching {
    // O(Log(n)) time | O(1) space
    func binarySearch1(array: [Int], target: Int) -> Int {
        guard !array.isEmpty else { return -1 }
        var leftPointer = 0
        var rightPointer = array.count - 1
        while leftPointer <= rightPointer {
            let middle = (leftPointer + rightPointer) / 2
            if target > array[middle] {
                leftPointer = middle + 1
            } else if target < array[middle] {
                rightPointer = middle - 1
            } else {
                return middle
            }
        }
        return -1
    }
}
