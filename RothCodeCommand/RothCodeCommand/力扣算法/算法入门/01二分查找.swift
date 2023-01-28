//
//  01二分查找.swift
//  RothCodeCommand
//
//  Created by liyongfen on 2023/1/28.
/**
 输入: nums = [-1,0,3,5,9,12], target = 9
 输出: 4
 */

import Foundation

class LeetCodeSolution1 {
    
    func search(_ nums: [Int], _ target: Int) -> Int {
        
        if nums.isEmpty {
            return -1
        }
        
        var left = 0
        var right = nums.count - 1
        while left <= right {
            
            let mid = Int((right + left) / 2)
            
            if(nums[mid] == target){
                return mid
            }
            
            if nums[mid] > target {
                right = mid - 1
            }else if(nums[mid] < target) {
                left = mid + 1
            }
        }
        
        return -1
    }
    
}
