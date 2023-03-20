//
//  09反转字符串中的单词.swift
//  RothCodeCommand
//
//  Created by shaozejun on 2023/1/31.
/**
 给定一个字符串 s ，你需要反转字符串中每个单词的字符顺序，同时仍保留空格和单词的初始顺序。
 输入：s = "Let's take LeetCode contest"
 输出："s'teL ekat edoCteeL tsetnoc"
 
 */

import Foundation

class LeetCodeSolution9 {
    
    func reverseWords(_ s: String) -> String {
        
        var array = Array(s)
        //一段一段的交换字符
        var left = 0
        var right = 0
        
        for (index,char) in array.enumerated() {
//            print(index,char);
            if char == " " || index == array.count - 1{
                right = char == " " ? index - 1 : index
                //交换局部
                while left <= right {
                    let tmpChar = array[left]
                    array[left] = array[right]
                    array[right] = tmpChar
                    left += 1
                    right -= 1
                }
                left = index + 1
//                print("是 空格");
            }
        }
        return String(array)
    }
}
