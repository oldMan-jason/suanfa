//
//  每日温度.swift
//  RothCodeCommand
//
//  Created by shaozejun on 2022/10/29.
/**
 给定一个整数数组 temperatures ，表示每天的温度，返回一个数组 answer ，其中 answer[i] 是指对于第 i 天，下一个更高温度出现在几天后。如果气温在这之后都不会升高，请在该位置用 0 来代替。

 输入: temperatures = [73,74,75,71,69,72,76,73]
 输出: [1,1,4,2,1,1,0,0]
 
 */

import Foundation

class SolutionTemperatures {
    
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {

        var arr = [Int]()
        
        for i in 0..<temperatures.count {
            let val = temperatures[i]
            
            for k in i+1..<temperatures.count {
                let kVal = temperatures[k]
                if (kVal > val) {
                    arr.append(k-i)
                    break
                }
            }
            
            if arr.count == i {
                arr.append(0)
            }
        }
        return arr
    }
}
