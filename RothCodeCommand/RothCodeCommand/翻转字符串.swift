//
//  翻转字符串.swift
//  RothCodeCommand
//
//  Created by shaozejun on 2022/11/3.

/**
 输入一个英文句子，翻转句子中单词的顺序，但单词内字符的顺序不变。为简单起见，标点符号和普通字母一样处理。例如输入字符串"I am a student. "，则输出"student. a am I"。
 1. 先消除多余的空格
 2. 完整的字符串进行逆序一遍
 3. 局部的字符串再次翻转
 */

import Foundation

class SolutionReverseWords {
    
    func reverseWords(_ s: String) -> String {
        
        if (s.isEmpty) {
            return ""
        }
        
        //1. 消除多余的空格
        //遍历的索引指针
        var index: Int = 0
        //填充值的索引指针
        var cur: Int = 0
        //是否是首次空格
        var space: Bool = true
        
        var chars = Array(s)
        
        while index < chars.count {
            
            if (chars[index] != " ") {
                
                chars[cur] = chars[index]
                cur += 1
                index += 1
                space = false
                
            }else if(space == false) {
                chars[cur] = " "
                space = true
            }
        }
        
        return ""
    }
    
    func reversRangeString(left: Int,right: Int) -> String {
        return ""
    }
    
}

