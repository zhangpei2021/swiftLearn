//
//  main.swift
//  JZ09
//
//  Created by zhangpeibj01 on 2021/7/29.
//

import Foundation

class Solution {
    func fib(_ n: Int) -> Int {
        if n == 0 { return 0 }
        if n == 1 { return 1 }
        var f1 = 0
        var f2 = 1
        for _ in (2...n) {
            let f3 = (f1 + f2) % 1000000007
            f1 = f2
            f2 = f3
        }
        return f2
    }
}

print(Solution().fib(95))

//var a = Int.max
//var b = Int.max
//print(a)
//var c = (a + b) % 1000000007  //Swift runtime failure: arithmetic overflow
//print(a)
