//
//  复杂度.swift
//  RothCodeCommand
//
//  Created by shaozejun on 2022/1/16.
/**
    复杂度
    斐波那契数  求第n项的值
 
    fn + fn+1 = fn+2
    0 1 1 2 3 5 8 13 21 44 ...
 
 
    时间复杂度和空间复杂度  大O表示法
    数据规模跟执行时间的对应关系，
    数据规模于内存使用的对应关系
 */

import Foundation

class Complexity {
    
    /**
        递归调用，当求n项比较大时，性能消耗较大
     */
    //  0 1 1 2 3 5 8 13 21 44 ...
    
    /**函数分开调用**/
    static func fibCalculate1(index:Int) -> Int{
        
        print("前 -- \(index)")
        if (index <= 1) {
            return index
        }
        print("后 -- \(index)")
        return fibCalculate1(index: index - 1) + fibCalculate1(index: index - 2)
    }
    
    
    /**方式二*/
    static func fibCalculate2(index: Int) -> Int{
        
        if (index <= 1) {return index}
        
        var first = 0
        var second = 1
        for _ in 0..<(index - 1) {
            
            let sum = first + second;
            first = second;
            second = sum
        }
        return second
    }

    static func complexity(fib: Int) -> Void {
        
//        let fib = fibCalculate1(index: 4)
        
        let fib2 = fibCalculate2(index: 4)
        
        print(fib2)
        
    }
    
    
}

