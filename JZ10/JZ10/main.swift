//
//  main.swift
//  JZ10
//
//  Created by zhangpeibj01 on 2021/7/29.
//

import Foundation

print("Hello, World!")

class Solution {
    func numWays(_ n: Int) -> Int {
        if n == 1 { return 0 }
        if n == 1 { return 1 }
        var res = [1,1]
        for item in (2...n) {
            res[item % 2] = (res[0] + res[1]) % 1000000007
        }
        return res[n % 2]
    }
}



