//
//  main.swift
//  JZ12
//
//  Created by zhangpeibj01 on 2021/7/30.
//

import Foundation

class Solution {

    var m: Int?
    var n: Int?

    lazy var isVisited = [[Bool]](repeating: [Bool](repeating: false, count: n ?? 0), count: m ?? 0)

    func isValid(_ i: Int, _ j: Int) -> Bool {
        if let m = m, let n = n {
            return i < m && i >= 0 && j < n && j >= 0
        }
        return false
    }
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        assert(word.count > 0)
        m = board.count
        n = board[0].count
        guard let m = m,
              let n = n
        else { return false }
        for height in 0..<m {
            for width in 0..<n {
                if board[height][width] == word.first {
                    isVisited[height][width] = true
                    if existHelper(board, word, 1, height, width) {
                        return true
                    } else {
                        isVisited[height][width] = false
                    }
                }
            }
        }
        return false
    }

    func existHelper(_ board: [[Character]], _ word: String, _ index: Int, _ i: Int, _ j: Int) -> Bool {
        if index == word.count { return true }
        if isValid(i + 1, j) && !isVisited[i + 1][j] && word[word.index(word.startIndex, offsetBy: index)] == board[i + 1][j] {
            isVisited[i + 1][j] = true
            if existHelper(board, word, index + 1, i + 1, j) {
                return true
            } else {
                isVisited[i + 1][j] = false
            }
        }
        if isValid(i - 1, j) && !isVisited[i - 1][j] && word[word.index(word.startIndex, offsetBy: index)] == board[i - 1][j] {
            isVisited[i - 1][j] = true
            if existHelper(board, word, index + 1, i - 1, j) {
                return true
            } else {
                isVisited[i - 1][j] = false
            }
        }
        if isValid(i, j + 1) && !isVisited[i][j + 1] && word[word.index(word.startIndex, offsetBy: index)] == board[i][j + 1] {
            isVisited[i][j + 1] = true
            if existHelper(board, word, index + 1, i, j + 1) {
                return true
            } else {
                isVisited[i][j + 1] = false
            }
        }

        if isValid(i, j - 1) && !isVisited[i][j - 1] && word[word.index(word.startIndex, offsetBy: index)] == board[i][j - 1] {
            isVisited[i][j - 1] = true
            if existHelper(board, word, index + 1, i, j - 1) {
                return true
            } else {
                isVisited[i][j - 1] = false
            }
        }
        return false
    }
}


print(Solution().exist([["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], "ABCCED"))
// a b c e
// s f c s
// a d e e
