//
//  02第一个错误版本.swift
//  RothCodeCommand
//
//  Created by liyongfen on 2023/1/28.
/**
 假设你有 n 个版本 [1, 2, ..., n]，你想找出导致之后所有版本出错的第一个错误的版本。

 你可以通过调用 bool isBadVersion(version) 接口来判断版本号 version 是否在单元测试中出错。实现一个函数来查找第一个错误的版本。你应该尽量减少对调用 API 的次数。
 */

import Foundation

class VersionControl {
    func isBadVersion(_ version: Int) -> Bool{
        return false
    }
}

class LeetCodeSolution2 : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        
        var left = 1
        var right = n
        
        while left < right {
            let mid = left + (right - left) / 2
            if isBadVersion(mid) {
                right = mid
            }else{
                left = mid + 1
            }
        }
        return left
    }
}
