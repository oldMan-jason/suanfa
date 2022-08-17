//
//  FindCode.swift
//  RothCodeCommand
//
//  Created by shaozejun on 2022/6/9.
//

import Foundation

class FindClassObject {
    
    /**二分查找**/
    func findValue(arr: [Int],arguments: Int) -> Bool {
        
        var left = 0
        var right = arr.count - 1
        while left <= right {

            let mid = (left + right) / 2
            
            if arguments == mid {return true}
                
            if arguments  < mid {
                right = mid - 1
            }
            
            if arguments > mid {
                left = mid + 1
            }
        }
        
        return false
        
    }
    
    
}
