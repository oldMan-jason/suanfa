//
//  04有序数组的平方.swift
//  RothCodeCommand
//
//  Created by liyongfen on 2023/1/29.
/**
 给你一个按 非递减顺序 排序的整数数组 nums，返回 每个数字的平方 组成的新数组，要求也按 非递减顺序 排序。
 */

import Foundation

class LeetCodeSolution4 {
    
    //双指针算法，比较绝对值，数值大的从数组末尾插入，移动指针位置
    func sortedSquares1(_ nums: [Int]) -> [Int] {
        
        var left = 0
        var right = nums.count - 1
        var k = nums.count - 1
        var tmpValusArray = Array(repeating: 0, count: nums.count)
        
        while left <= right {
            
            if abs(nums[left]) > abs(nums[right]) {
                let sq = nums[left] * nums[left]
                tmpValusArray[k] = sq
                k -= 1
                left += 1
            }else{
                let sq = nums[right] * nums[right]
                tmpValusArray[k] = sq
                k -= 1
                right -= 1
            }
        }
        
        return tmpValusArray
    }
    
    //常规写法
    func sortedSquares(_ nums: [Int]) -> [Int] {
        
        if (nums.isEmpty) {
            return []
        }
        
        var tmpValues = [Int]()
        
   
        for val in nums {
            let squaresVal = val * val
            if tmpValues.isEmpty {
                tmpValues.append(squaresVal)
                continue
            }
            
            var ptr2 = 0
            while ptr2 < tmpValues.count {
                let tmpVal = tmpValues[ptr2]
                if squaresVal <= tmpVal {
                    tmpValues.insert(squaresVal, at: ptr2)
                    break
                }else{
                    ptr2 += 1
                }
            }
            
            if ptr2 >= tmpValues.count {
                tmpValues.append(squaresVal)
            }
        }
        
        return tmpValues
    }
    
}
