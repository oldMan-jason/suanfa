//
//  部分排序.swift
//  RothCodeCommand
//
//  Created by shaozejun on 2022/8/17.
//

/**
    给定一个无序的数组，找出最小的区间断 [m,n],只对m~n区间的值进行排序，则整个数组就变成一个有序的集合，保证[m,n]的区间值最小
    例如: [1,5,4,3,2,6,7];  最小区间 m~n 为 [5,4,3,2]这段值的索引 [1,4]
 
    从左边开始(属于正序对，小到大)找到最后一个逆序对 （突然由大变小），记录索引
    从右边开始（属于正序，大到小）找到最后一个逆序对 （突然由小变大），记录录索引
    这两个索引即为 最小的区间断
 
 */
import Foundation

class SortPartArrayObject {
    
        let array = [2,10,5,4,3,2,6,17]
        
        func sortPartArray() -> [Int] {
        
            //从左往右开始扫描寻找逆序对，（正序是逐渐变大）,记录最大值，比最大值小的，则为逆序对，记录当前的扫描索引，
            var max = array[0]
            var r = -1
            for i in 0..<array.count {
                
                let v = array[i]
                if v >= max {
                    max = v
                }else{
                    r = i
                }
            }
        
            //从右扫描到左寻找逆序对，（正序，逐渐变小）
            var min = array[array.count - 1];
            var l = -1;
            for i in (0..<array.count).reversed() {
                let v = array[i]
                if v <= min {
                    min = v
                }else{
                    l = i
                }
            }
            let rang = [l,r];
            print(rang)
            return rang
    }
    
    
}
