//
//  main.swift
//  JZ04
//
//  Created by zhangpeibj01 on 2021/7/27.
//

import Foundation

print("Hello, World!")

class Solution {
    func findNumberIn2DArray(_ matrix: [[Int]], _ target: Int) -> Bool {
        var row = 0, col = matrix[0].count - 1
        while row <= matrix.count - 1, col >= 0 {
            if matrix[row][col] == target {
                return true
            } else if matrix[row][col] < target {
                row += 1
            } else {
                col -= 1
            }
        }
        return false
    }
}
let matrix = [[1,4,7,11,15],[2,5,8,12,19],[3,6,9,16,22],[10,13,14,17,24],[18,21,23,26,30]]
print(matrix.reduce(into: []){
    $0.append($1[0])
})

