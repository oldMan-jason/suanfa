//
//  06移动零.swift
//  RothCodeCommand
//
//  Created by liyongfen on 2023/1/30.
/**
 给定一个数组 nums，编写一个函数将所有 0 移动到数组的末尾，同时保持非零元素的相对顺序。

 请注意 ，必须在不复制数组的情况下原地对数组进行操作。
 
 输入: nums = [0,1,0,3,12]
 输出: [1,3,12,0,0]
 
 双指针
 一个遍历指针，遇到0掉过，非0，则跟0指针交换，0指针++
 一个指0指针，
 
 */

import Foundation

class LeetCodeSolution6 {
    
    func moveZeroes(_ nums: inout [Int]) {
        
        var zeroPtr = 0
        var enumPtr = 0
        
        while enumPtr < nums.count {
            let val = nums[enumPtr]
            if val != 0 {
                nums[enumPtr] = nums[zeroPtr]
                nums[zeroPtr] = val
                
                zeroPtr += 1
                enumPtr += 1
            }else{
                enumPtr += 1
            }
        }
        
        print(nums)
    }
}
