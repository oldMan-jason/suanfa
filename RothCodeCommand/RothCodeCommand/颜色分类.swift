//
//  颜色分类.swift
//  RothCodeCommand
//
//  Created by shaozejun on 2022/8/17.
//

/**
     一个只包含 0、1、2的整形数组，要求对他进行【原地】排序，你能想出一个仅使用常数空间，一遍扫描的算法吗？
    一般思路都是双指针或者三指针
     例如： let arr = [2,1,0,1,2,0]
     输出： [0,0,1,1,2,2]
 采用三指针处理 （假如： 遍历指针，代表数字0指针标识，代表数字2指针）
 遍历指针遇到数字1： 跳过
 遍历指针遇到数字0：跟0指针交互位置，0指针++，遍历指针++
 遍历指针遇到数字2：跟2指针交互位置，2指针--，遍历指针不变
 */
import Foundation

class ColourObject {
    
    var arr = [2,1,1,0,0,2]
    
    func sortValue3() {
        
        var index0 = 0
        var cur = 0
        var index2 = arr.count - 1
        
        while cur <= index2 {
            
            let value = arr[cur]
            if value == 0 {
                //与0指针位置交互
                arr.swapAt(index0, cur)
                index0 += 1
                cur += 1
                
            }else if(value == 1){
                //遍历指针++
                cur += 1
                continue
                
            }else{
                
                //与2位置指针交互
                arr.swapAt(index2, cur)
                index2 -= 1
            }
        }
        print(arr)
        
        
        
        
    }
    
    
    
    
}
