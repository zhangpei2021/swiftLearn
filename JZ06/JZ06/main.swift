//
//  main.swift
//  JZ06
//
//  Created by zhangpeibj01 on 2021/7/28.
//

import Foundation

print("Hello, World!")



public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}
class Solution {
    func reversePrint(_ head: ListNode?) -> [Int] {
        var result = [Int]()
        var headHelper = head
        while headHelper != nil {
            result.append(headHelper!.val)
            headHelper = headHelper?.next
        }
        return result.reversed()
    }
}
