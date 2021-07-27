//
//  main.swift
//  JZ05
//
//  Created by zhangpeibj01 on 2021/7/28.
//

import Foundation

print("Hello, World!")

class Solution {
    func replaceSpace(_ s: String) -> String {
        return s.replacingOccurrences(of: " ", with: "%20")
    }
}
