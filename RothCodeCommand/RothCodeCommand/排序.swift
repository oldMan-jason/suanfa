//
//  冒泡排序.swift
//  RothCodeCommand
//
//  Created by liyongfen on 2022/8/17.
//

import Foundation

class PaixuClass {
    
    var array = [21,1,9,6,4,14];
    
    /**
     冒泡排序
     */
    func maopao() {
        
        for i in 0..<array.count - 1 {
            
            for j in 0..<array.count - i - 1 {
                
                if array[j] > array[j+1] {
                    array.swapAt(j, j+1);
                }
            }
        }
        
        print(array)
        
    }
    
    /***
      选择排序算法可以拆分成以下几个步骤：
     （1）从数组中找出最小的元素，将其与第一个元素进行交换，此时第一个元素变成已排序元素。
     （2）依次对数组中的未排序元素进行第一步中的操作。
     （3）直到数组中所有的元素都变成已排序元素”
     */
     
    func choice() {
        
        for i in 0..<array.count {
            
            var min = i;
            
            for j in (i + 1)..<array.count {
                if array[j] < array[min] {
                    min = j
                }
            }
            
            if i != min {
                array.swapAt(min, i);
            }
        }
        
        print("排序--\(array)")
        
    }
    
    /**
     插入排序
     “插入排序算法的核心是将数组分为两部分，其中一部分有序、另一部分无序，
     之后在无序的部分中选择一个元素插入到有序部分的正确位置上”
     */
    func insertFun() -> Void {
        
        for i in 1..<array.count {
            
            let obj = array[i]
            
            for j in 0..<i {
                if array[j] > obj {
                    array.remove(at: i)
                    array.insert(obj, at: j)
                    break
                }
            }
        }
        
        print("插入排序 -- \(array)")
        
    }
    
}
