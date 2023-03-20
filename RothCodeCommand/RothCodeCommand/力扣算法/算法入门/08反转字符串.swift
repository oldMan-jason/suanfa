//
//  08反转字符串.swift
//  RothCodeCommand
//
//  Created by shaozejun on 2023/1/31.
/**
 编写一个函数，其作用是将输入的字符串反转过来。输入字符串以字符数组 s 的形式给出。

 不要给另外的数组分配额外的空间，你必须原地修改输入数组、使用 O(1) 的额外空间解决这一问题。
 
 输入：s = ["h","e","l","l","o"]
 输出：["o","l","l","e","h"]
 */

import Foundation

class LeetCodeSolution8 {
    
    func reverseString(_ s: inout [Character]) {
        
        //定义两个遍历指针
        var left = 0
        var right = s.count - 1
        
        while left <= right {
            let tmpChar = s[left]
            s[left] = s[right]
            s[right] = tmpChar
            left += 1
            right -= 1
        }
        
        print(s)
    }
}
