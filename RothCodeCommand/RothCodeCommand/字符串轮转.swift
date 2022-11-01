//
//  字符串轮转.swift
//  RothCodeCommand
//
//  Created by shaozejun on 2022/10/29.
/**
 字符串轮转。给定两个字符串s1和s2，请编写代码检查s2是否为s1旋转而成（比如，waterbottle是erbottlewat旋转后的字符串）。
 
 解题技巧
 s1字符串和本身相加后，判断s2是否其合成字符串的子串
 */

import Foundation

class SolutionFliped {
    
    func isFlipedString(_ s1: String, _ s2: String) -> Bool {
        
        if (s1.isEmpty && s2.isEmpty) {
            return true
        }
        
        if (s1.isEmpty || s2.isEmpty) {
            return false
        }
        
        if(s1.count != s2.count) {
            return false
        }
        
        let newStr = s1 + s1
        return newStr.contains(s2)
    }
}
