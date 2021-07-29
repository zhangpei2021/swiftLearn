//
//  main.swift
//  JZ11
//
//  Created by zhangpeibj01 on 2021/7/29.
//

import Foundation

print("Hello, World!")

class Solution {
    func minArray(_ numbers: [Int]) -> Int {
        var l = 0
        var r = numbers.count - 1
        while l != r {
            let mid = l + (r - l) / 2
            if numbers[mid] < numbers[r] {
                r = mid
            } else if numbers[mid] > numbers[r] {
                l = mid + 1
            } else {
                r -= 1
            }
        }
        return numbers[l]
    }
}
