//
//  03搜索插入位置.swift
//  RothCodeCommand
//
//  Created by liyongfen on 2023/1/28.

/**
 给定一个排序数组和一个目标值，在数组中找到目标值，并返回其索引。如果目标值不存在于数组中，返回它将会被按顺序插入的位置。
 */

import Foundation

class LeetCodeSolution3 {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        
        var left = 0
        var right = nums.count - 1
        
        while left <= right {
            
            let mid = Int((right + left) / 2)
            
            if nums[mid] == target{
                return mid
            }
            
            if mid > target {
                right = mid - 1
            }else{
                left = mid + 1
            }
        }
        
        left = 0
        while left < nums.count && nums[left] < target {
            left += 1
        }
        
        return left
    }
}
