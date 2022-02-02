//
//  栈.swift
//  RothCodeCommand
//
//  Created by shaozejun on 2022/1/29.


/**
    通过栈的方式判断有效括号算法
 */

import Cocoa

class StackObject: NSObject {
    
    var stack = [Character]()
    
    func isValid(text: String) -> Bool {
        
        for c in text {
            print(c)
            if c == "{" || c == "[" || c == "("  {
                stack.append(c)
                
            }else{
                
                if stack.isEmpty {
                    return false
                }
                
                let lastC = stack.removeLast();
                
                if lastC == "[" && c != "]" {
                    return false
                }
                if lastC == "{" && c != "}" {
                    return false
                }
                if lastC == "(" && c != ")" {
                    return false
                }
            }
        }
        
        return stack.isEmpty
        
    }
}
