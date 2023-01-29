//
//  05轮转数组.swift
//  RothCodeCommand
//
//  Created by liyongfen on 2023/1/29.
/**
 给你一个数组，将数组中的元素向右轮转 k 个位置，其中 k 是非负数。
 */

import Foundation

class LeetCodeSolution5 {
    func rotate(_ nums: inout [Int], _ k: Int) {
        
        
        print("输入数组 -- \(nums)")
        let count = nums.count
        var tmpArray = Array(repeating: 0, count: nums.count)
        
        for index in 0..<nums.count {
            let val = nums[index]
            var newIndex = index + k
            if newIndex >= count {
                newIndex = newIndex % count
            }
            tmpArray[newIndex] = val
        }
        print("输出数组 -- \(tmpArray)")
        
    }
}
