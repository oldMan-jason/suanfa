//
//  无重复字符的最长子串.swift
//  RothCodeCommand
//
//  Created by shaozejun on 2023/2/2.

/**
 给定一个字符串 s ，请你找出其中不含有重复字符的 最长子串 的长度。
 
 */

import Foundation


class LeetCodeSolution12 {
    
    func lengthOfLongestSubstring(_ s: String) -> Int {

        let charsArray = Array(s)
        
        var enumPtr = 0
        var deletePtr = 0
        var length = 0
        var maxLen = 0
        var charsTmpArray = [Character]()
        while enumPtr < charsArray.count {
            let c: Character = charsArray[enumPtr]
            if !charsTmpArray.contains(c) {
                charsTmpArray.append(c)
                enumPtr += 1
                length = charsTmpArray.count
                maxLen = max(maxLen, length)
                
            }else{
                
                while charsTmpArray.contains(c) {
                    charsTmpArray.remove(at: deletePtr)
                    deletePtr += 1
                    length -= 1
                }
                
                charsTmpArray.append(c)
                enumPtr += 1
            }
        }
        
        return maxLen
    }
}
