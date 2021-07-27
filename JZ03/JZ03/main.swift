//
//  main.swift
//  JZ03
//
//  Created by zhangpeibj01 on 2021/7/27.
//

import Foundation

class Solution {
    func findRepeatNumber(_ nums: [Int]) -> Int {
        return nums.reduce(into: [ : ]) {
            $0[$1, default: 0] += 1
        }.filter {$0.value > 1}.keys.first ?? -1
    }
}

print(Solution().findRepeatNumber([2,3,1,0]))

