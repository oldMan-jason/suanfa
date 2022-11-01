//
//  两数相加.swift
//  RothCodeCommand
//
//  Created by shaozejun on 2022/10/27.
/**
 给出两个非空的链表，用来表示两个非负数的整数，其中，他们格子的位数是按照逆序的方式存储。并且每一个节点只能存储一位数字
 将两个数相加。则返回一个新的链表
 （2 -> 4 -> 3）+ (5 -> 6 -> 4)
  7 -> 0 -> 8
 
 思路：
 两个指针分别从头结点遍历，数值相加，
 创建一个进位指针，记录十进制的进位数
 */

import Foundation

class ListNodelData {
    var value: Int
    var nextNodel: ListNodelData?
    init(value: Int) {
        self.value = value
    }
}

class SumNodesObject {
    
    func setupNode(nodeArr: [Int]) -> ListNodelData {
        
        var firstNode: ListNodelData?
        var lastNode: ListNodelData?
        
        for val in nodeArr {
            let node = ListNodelData(value: val)
            if(firstNode == nil) {
                firstNode = node
            }else{
                lastNode?.nextNodel = node
            }
            lastNode = node
        }
        return firstNode!
    }
    
    func sumNodeData(firstNode: ListNodelData,lastNode: ListNodelData) -> ListNodelData {
    
        var tmp1 = firstNode
        var tmp2 = lastNode
        
        //虚拟头结点
        let dummyNode = ListNodelData(value: 0)
        var nextNode = dummyNode
        
        var jinweishu = 0
        while tmp1.value != 0 || tmp2.value != 0 {
            
            var v1 = 0
            var v2 = 0
            
            if tmp1.value != 0 {
                v1 = tmp1.value
            }
            
            if tmp2.value != 0 {
                v2 = tmp2.value
            }
            
            let sum = tmp1.value + tmp2.value + jinweishu
            jinweishu = sum/10
            let node = ListNodelData(value: sum%10)
            nextNode.nextNodel = node
            nextNode = node
            
            if let node1 = tmp1.nextNodel,let node2 = tmp2.nextNodel {
                tmp1 = node1
                tmp2 = node2
            }else{
                tmp1.value = 0
                tmp2.value = 0
            }
            
        }
        
        if(jinweishu > 0) {
            nextNode.nextNodel = ListNodelData(value: jinweishu)
        }
        return dummyNode.nextNodel!
    }
    
    
}



