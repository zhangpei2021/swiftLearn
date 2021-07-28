//
//  main.swift
//  JZ07
//
//  Created by zhangpeibj01 on 2021/7/28.
//

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution {
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        // 根左右 // 左根右
        // [3, 9, 20, 15, 7]
        // [9, 3, 15, 20, 7]
        // 3 [9] [20, 15, 7]
       //    [9] [15, 20, 7]
        if preorder.count == 0 { return nil }
        return buildTreeHelper(preorder, inorder, 0, preorder.count - 1, 0, inorder.count - 1)
    }

    func buildTreeHelper(_ preorder: [Int], _ inorder: [Int], _ l1: Int, _ r1: Int, _ l2:Int, _ r2: Int) ->TreeNode? {
        if l1 > r1 || l2 > r2 { return nil }
        let root = TreeNode(preorder[l1])
        // [l2, nr2]
        var nr2 = inorder.firstIndex(of: preorder[l1])! - 1
        var count = nr2 - l2 + 1
        // [l1 + 1, nr1]
        var nr1 = l1 + 1 + count - 1
        root.left = buildTreeHelper(preorder, inorder, l1 + 1, nr1, l2, nr2)
        // [nnl2, r2]
        var nnl2 = nr2 + 2
        // [nnr1, r1]
        var nnl1 = nr1 + 1
        root.right = buildTreeHelper(preorder, inorder, nnl1, r1, nnl2, r2)
        return root
    }
}

