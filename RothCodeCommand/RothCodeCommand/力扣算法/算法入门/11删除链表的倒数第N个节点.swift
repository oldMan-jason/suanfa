//
//  11删除链表的倒数第N个节点.swift
//  RothCodeCommand
//
//  Created by shaozejun on 2023/2/1.
/**
 给你一个单链表，删除链表的倒数第 n 个结点，并且返回链表的头结点。
 输入：head = [1,2,3,4,5], n = 2
 输出：[1,2,3,5]
 */

import Foundation

class LeetCodeSolution11 {
    
    //方案2
    func removeNthFromEnd2(_ head: ListNode?, _ n: Int) -> ListNode? {
        
        var mutalHead = head
        //获取总节点数
        var count = 0
        while mutalHead != nil {
            count += 1
            mutalHead = mutalHead?.next
        }
        
        var dummy = ListNode(val: 0)
        dummy.next = head
        let ans = dummy
        //遍历知道要删除的节点为止
        for _ in 0..<count - n {
            dummy = dummy.next!
        }
        dummy.next = dummy.next?.next
        
        return ans.next
        
    }
    //方案1
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    
        if var head = head {
            
            var nodesArray = [ListNode]()
            nodesArray.append(head)
            
            while head.next != nil {
                nodesArray.append(head.next!)
                head = head.next!
            }
            
            //移除数组中的索引节点
            let count = nodesArray.count
            if n <= count {
                //需要删除的索引
                let index = (count - n)
                var tmpHead: ListNode? = nodesArray.first
                //虚拟头结点
                let newHead = ListNode(val: 0)
                var newTail = newHead
                var enumIndex = 0
                while tmpHead != nil {
                    
                    if enumIndex != index {
                        newTail.next = tmpHead;
                        newTail = tmpHead!
                    }
                    tmpHead = tmpHead?.next
                    enumIndex += 1
                }
                newTail.next = nil;
                return newHead.next
            }
            
        }
        
        return nil
    }
}
