//
//  07两数之和 II - 输入有序数组.swift
//  RothCodeCommand
//
//  Created by liyongfen on 2023/1/30.
/**
 给你一个下标从 1 开始的整数数组 numbers ，该数组已按 非递减顺序排列  ，请你从数组中找出满足相加之和等于目标数 target 的两个数。如果设这两个数分别是 numbers[index1] 和 numbers[index2] ，则 1 <= index1 < index2 <= numbers.length 。

 以长度为 2 的整数数组 [index1, index2] 的形式返回这两个整数的下标 index1 和 index2。

 输入：numbers = [2,7,11,15], target = 9
 输出：[1,2]
 解释：2 与 7 之和等于目标数 9 。因此 index1 = 1, index2 = 2 。返回 [1, 2] 。
 */

import Foundation

class LeetCodeSolution7 {
    
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        
        var dic = [Int:Int]()
        
        for index in 0..<numbers.count{
            
            let val = numbers[index];
            let difference = target - val
            let dicVal = dic[difference]
            if let dicVal = dicVal {
                return [dicVal + 1,index + 1]
            }else{
                dic[val] = index
            }
        }
        return []
    }
}
