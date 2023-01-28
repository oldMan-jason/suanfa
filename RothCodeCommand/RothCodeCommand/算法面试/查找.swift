//
//  FindCode.swift
//  RothCodeCommand
//
//  Created by shaozejun on 2022/6/9.


/**
 查找算法
 */

import Foundation


class Node {
    
    var left:Node?
    var right: Node?
    var value: Int
    
    init(value: Int) {
        self.value = value
    }
}

class FindClassObject {
    
    /**二分查找，要求查找集合是有序集合**/
    func findValue(values: [Int],value: Int) -> Bool {
        
        var left = 0
        var right = values.count - 1;
        
        while left <= right {
            
            let mid = Int((left + right)/2)
            
            if values[mid] == value {
                return true
            }
            
            if value > values[mid] {
                left = mid + 1;
            }
            
            if value < values[mid] {
                right = mid - 1
            }
        }
        return false
    }
    
    /**
        插值查找
        根据比例查找,例如查找元素c，
        比例a：(c - array[left]) / (array[right] - array[left])
        分割点：left + Int（(right-left) * 比例a）
     
     */
    func found(array:[Int],obj: Int) -> Bool {
        print(array);
        var left = 0
        var right = array.count - 1
        while left <= right {
            //比例
            let point = (obj - array[left]) / (array[right] - array[left]);
            print("比例：\(point)")
            //分割点
            let mid = left + Int((right - left) * point)
            
//            let mid = left + Int((right + left) * (obj - array[left])/(array[right] - array[left]))
            
            print("分割点：\(mid)")
            
            if obj == array[mid]
            {
                return true
            }
            
            if obj > array[mid] {
                left = mid + 1
            }
            
            if(obj < array[mid]) {
                right = mid - 1
            }
        }
        
        return false
        
    }
    
    /**
     斐波那契查找
     */
    func find2() -> Void {
        
    }
    
    /**
     二叉树查找
     在使用二叉查找树进行查找时，首先会从根节点进行比较。根据大小关系选择要继续查找的子树，当查找到元素或者子树为空时查找完毕
    
     */
    func find3(root: Node?,obj: Int) -> Bool {
        
        while root != nil {
            
            var node = root
            if node!.value == obj {
                return true
            }
            
            if node!.value > obj {
                node = node?.left
                continue
            }
            
            if node!.value < obj {
                node = node?.right
                continue
            }
        }
        
        return false
    }
}
