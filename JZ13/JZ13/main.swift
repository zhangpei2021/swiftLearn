//
//  main.swift
//  JZ13
//
//  Created by zhangpeibj01 on 2021/7/30.
//

import Foundation

class Solution {
    func cuttingRope(_ n: Int) -> Int {
        if n == 2 {
            return 1
        } else if n == 3 {
            return 2
        } else if n == 4 {
            return 4
        } else {
            var res = 1
            var m = n
            while m > 4 {
                res *= 3
                m -= 3
            }
            return res * m
        }
    }
}

