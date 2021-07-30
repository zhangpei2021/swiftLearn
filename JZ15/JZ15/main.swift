//
//  main.swift
//  JZ15
//
//  Created by zhangpeibj01 on 2021/7/30.
//

import Foundation

class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var res = 0
        var m = n
        while m != 0 {
            m = m & (m - 1)
            res += 1
        }
        return res
    }
}
