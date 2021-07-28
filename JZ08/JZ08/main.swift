//
//  main.swift
//  JZ08
//
//  Created by zhangpeibj01 on 2021/7/28.
//

import Foundation

print("Hello, World!")

class CQueue {

    var stack1: [Int]
    var stack2: [Int]

    init() {
        stack1 = [Int]()
        stack2 = [Int]()
    }

    func appendTail(_ value: Int) {
        stack1.append(value)
    }

    func deleteHead() -> Int {
        if stack2.count == 0 {
            while stack1.count != 0 {
                stack2.append(stack1.popLast()!)
            }
        }
        return stack2.popLast() ?? -1
    }
}

let c = CQueue()
print(c.deleteHead())
c.appendTail(5)
c.appendTail(2)
print(c.deleteHead())
print(c.deleteHead())


